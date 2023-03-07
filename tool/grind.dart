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

@Task('flutter pub run build_runner build --delete-conflicting-outputs')
void b() {
  _runCommand(command: 'flutter pub run build_runner build -d');
}

@Task('flutter pub run build_runner watch --delete-conflicting-outputs')
void w() {
  _runCommand(command: 'flutter pub run build_runner watch -d');
}

@Task('flutter gen-l10n')
void l() {
  _runCommand(command: 'flutter gen-l10n');
}

@Task('CocoaPodsのアップデート(パッケージアプデ時に使う)')
void up() {
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
