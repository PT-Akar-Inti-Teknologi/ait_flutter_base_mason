import 'dart:io';

import 'package:mason/mason.dart';
import 'package:path/path.dart' as path;

void run(HookContext context) async {
  final progress = context.logger.progress('Installing packages');
  final generator = await MasonGenerator.fromBrick(
    Brick.git(
      GitPath(
        'https://github.com/PT-Akar-Inti-Teknologi/ait_flutter_mason.git',
        path: 'ait_cubit',
      ),
    ),
  );
  final String name = context.vars['name'];
  final bool use_formx = context.vars['use_formx'];
  Map<String, dynamic> vars = {'name': name, 'use_formx': use_formx};
  var directoryPath = Directory(
    path.join(Directory.current.path, name.snakeCase),
  );
  await generator.hooks.preGen(
    workingDirectory: directoryPath.path,
    vars: vars,
    onVarsChanged: (new_var) {
      vars = new_var;
    },
  );
  await generator.generate(
    DirectoryGeneratorTarget(directoryPath),
    vars: vars,
    fileConflictResolution: FileConflictResolution.overwrite,
    logger: Logger(),
  );

  progress.complete();
}
