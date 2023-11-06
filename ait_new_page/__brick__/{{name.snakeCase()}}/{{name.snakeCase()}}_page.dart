import 'package:flutter/material.dart';
import 'package:common_dependency/common_dependency.dart';

import 'cubit/{{name.snakeCase()}}_cubit.dart';

class {{name.pascalCase()}}Page extends StatelessWidget {
  const {{name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
       create:(context)=> di<{{name.pascalCase()}}Cubit>(),
       child: const {{name.pascalCase()}}UI(),
    );
  }
}

class {{name.pascalCase()}}UI extends StatelessWidget {
  const {{name.pascalCase()}}UI({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: Placeholder(),
    );
  }
}
