import 'dart:io';

import 'package:grinder/grinder.dart';
import 'package:k9i_cli/k9i_cli.dart';

void main(List<String> args) {
  addAllTasks(enableAlias: true, useFvm: true);
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
