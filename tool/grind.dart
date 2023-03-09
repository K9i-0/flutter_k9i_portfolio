import 'dart:io';

import 'package:grinder/grinder.dart';

void main(List<String> args) => grind(args);

Future<void> _runCommand({
  required String command,
}) async {
  final splittedCommand = command.split(' ');
  log(command);
  final process = await Process.start(
    splittedCommand.first,
    splittedCommand.sublist(1),
  );
  stdout.addStream(process.stdout);
  stderr.addStream(process.stderr);
}

@Task('build alias')
void b() => build();

@Task('flutter pub run build_runner build --delete-conflicting-outputs')
void build() {
  _runCommand(command: 'flutter pub run build_runner build -d');
}

@Task('watch alias')
void w() => watch();

@Task('flutter pub run build_runner watch --delete-conflicting-outputs')
void watch() {
  _runCommand(command: 'flutter pub run build_runner watch -d');
}

@Task('l10n alias')
void l() => l10n();

@Task('flutter gen-l10n')
void l10n() {
  _runCommand(command: 'flutter gen-l10n');
}

@Task('serveWeb alias')
void s() => serveWeb();

// ローカルネットワークでアクセスできるようにする
// https://zenn.dev/toridori/articles/673cfe00628bb4
@Task('flutter run -d web-server --web-hostname=0.0.0.0 --web-port=50505')
void serveWeb() {
  final result = Process.runSync('ifconfig', [], runInShell: true);
  if (result.exitCode != 0) {
    throw Exception(
        'ifconfig command failed with exit code ${result.exitCode}');
  }
  final output = result.stdout.toString();
  final lines = output.split('\n');
  for (var line in lines) {
    if (line.contains('inet ') && !line.contains('127.0.0.1')) {
      final ip = line.split(' ')[1];
      log(ip);
      _runCommand(
        command:
            'flutter run -d web-server --web-hostname=$ip --web-port=50505',
      );
      break;
    }
  }
}

@Task('updatePods alias')
void u() => updatePods();

@Task('CocoaPodsのアップデート(パッケージアプデ時に使う)')
void updatePods() {
  run(
    'rm',
    arguments: ['-rf', 'Pods/'],
    workingDirectory: 'ios',
  );
  run(
    'rm',
    arguments: ['-rf', 'Podfile.lock'],
    workingDirectory: 'ios',
  );
  run(
    'flutter',
    arguments: ['clean'],
  );
  run(
    'flutter',
    arguments: ['pub', 'get'],
  );
  run(
    'pod',
    arguments: ['install', '--repo-update'],
    workingDirectory: 'ios',
  );
}
