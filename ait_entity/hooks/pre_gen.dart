import 'package:mason/mason.dart';

part 'pre_gen_utils/get_type.dart';
part 'pre_gen_utils/get_is_object.dart';
part 'pre_gen_utils/get_object.dart';
part 'pre_gen_utils/remap.dart';

void run(HookContext context) async {
  final name = context.vars['name'];
  final entity = '${name.toString().pascalCase}';
  final response = '${name.toString().pascalCase}Response';
  context.vars.removeWhere((key, value) => key == 'name');
  final data = await context.vars;
  context.vars = {};
  final remapedData = remap(data);
  final joinedData = {
    "name": name,
    "entity": entity,
    "response": response,
    "object": remapedData,
  };
  context.vars.addAll(joinedData);
}
