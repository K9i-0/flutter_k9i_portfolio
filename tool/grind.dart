import 'dart:io';

import 'package:dart_openai/openai.dart';
import 'package:dotenv/dotenv.dart';
import 'package:grinder/grinder.dart';
import 'package:k9i_cli/k9i_cli.dart';

void main(List<String> args) {
  addAllTasks(enableAlias: true);
  grind(args);
}

// ignore: unused_element
Future<void> _runCommand({
  required String command,
}) async {
  final splittedCommand = command.split(' ');
  log(command);
  final process = await Process.start(
    splittedCommand.first,
    splittedCommand.sublist(1),
  );
  await stdout.addStream(process.stdout);
  await stderr.addStream(process.stderr);
}

@Task('commitMessage alias')
void c() => commitMessage();

@Task('コミットメッセージを生成する')
Future<void> commitMessage() async {
  final diffCommandResult = Process.runSync('git', ['diff'], runInShell: true);
  if (diffCommandResult.exitCode != 0) {
    throw Exception(
      'git diff command failed with exit code ${diffCommandResult.exitCode}',
    );
  }
  final diff = diffCommandResult.stdout.toString();
  log(diff);

  // .envファイルを読み込む
  final env = DotEnv()..load();
  final apiKey = env['OPEN_AI_API_KEY']!;
  OpenAI.apiKey = apiKey;
  final chatGptResult = await OpenAI.instance.chat.create(
    model: 'gpt-3.5-turbo',
    messages: [
      OpenAIChatCompletionChoiceMessageModel(
        content: '''
あなたはgitのコミットメッセージを考えるアシスタントです。gitの差分を入力されたら、そこからコミットメッセージを考えてください。

考慮事項
- 日本語でお願いします
- 返答はコミットメッセージの内容だけを返してください
- +ではじまる行が追加された行、-ではじまる行が削除された行です

例
- 機能追加：ユーザー登録画面の実装
- 修正：検索結果のページネーションの不具合を解消
- リファクタリング：無駄なコードの削除と整理
- テスト追加:新規APIエンドポイントのテストケースを作成
- ドキュメント更新:README.mdに使用方法を追記
''',
        role: OpenAIChatMessageRole.system,
      ),
      OpenAIChatCompletionChoiceMessageModel(
        content: diff,
        role: OpenAIChatMessageRole.user,
      ),
    ],
  );
  final commitMessage = chatGptResult.choices.first.message.content;
  log(commitMessage);
  await Process.run(
    'zsh',
    ['-c', 'echo $commitMessage | pbcopy'],
    runInShell: true,
  );
}
