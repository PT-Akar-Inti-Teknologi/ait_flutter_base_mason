import 'package:change_case/change_case.dart';
import 'package:mason/mason.dart';

void run(HookContext context) {
  final name = context.vars['name'];
  context.vars['cubit'] = '${name.toString().toPascalCase()}Cubit';
  context.vars['cubit_formx'] = '${name.toString().toPascalCase()}Formx';
  context.vars['state'] = '${name.toString().toPascalCase()}State';
}
