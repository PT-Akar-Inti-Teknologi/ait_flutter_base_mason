import 'package:mason/mason.dart';

void run(HookContext context) async {
  final progress = context.logger.progress('Installing packages');

  // Future.delayed(Duration(seconds: 1));

  // Run `flutter packages get` after generation.
  // await Process.run(
  //   'melos',
  //   [
  //     'exec',
  //     '--scope=auth'
  //         '--'
  //         'flutter'
  //         'pub'
  //         'run'
  //         'build_runner'
  //         'build'
  //         '--delete-conflicting-outputs',
  //   ],
  // );

  progress.complete();
}
