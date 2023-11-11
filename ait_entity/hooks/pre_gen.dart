import 'package:change_case/change_case.dart';
import 'package:mason/mason.dart';

void run(HookContext context) {
  final name = context.vars['name'];
  context.vars['entity'] = '${name.toString().toPascalCase()}';
  context.vars['response'] = '${name.toString().toPascalCase()}Response';
}
