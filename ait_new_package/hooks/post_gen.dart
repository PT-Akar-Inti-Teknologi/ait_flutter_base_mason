import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  final progress = context.logger.progress('Installing packages');
  final String name = context.vars['name'];
  await Process.run('melos', ['bootstrap', '--scope=${name.snakeCase}']);
  progress.complete();
}
