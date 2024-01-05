import 'package:mason/mason.dart';

part 'pre_gen_utils/get_type.dart';
part 'pre_gen_utils/get_is_object.dart';
part 'pre_gen_utils/get_object.dart';
part 'pre_gen_utils/remap.dart';

void run(HookContext context) async {
  final name = context.vars['name'];
  final isParam = context.vars['is_param'];
  final entity = getEntityName(context, context.vars);
  final response = getResponseName(context, context.vars);
  context.vars.removeWhere((key, value) => key == 'name' || key == 'is_param');
  final data = await context.vars;
  context.vars = {};
  final remapedData = remap(data);
  final joinedData = {
    "name": name,
    "entity": entity,
    "response": response,
    "is_param": isParam,
    "object": remapedData,
  };
  context.vars.addAll(joinedData);
}

String getEntityName(HookContext context, Map<String, dynamic> vars) {
  final bool? isParam = context.vars['is_param'];
  final name = context.vars['name'];
  final entityName = '${name.toString().pascalCase}';
  return isParam == true ? '$entityName' + 'Param' : entityName;
}

String getResponseName(HookContext context, Map<String, dynamic> vars) {
  final bool? isParam = context.vars['is_param'];
  final name = context.vars['name'];
  final responseName = '${name.toString().pascalCase}';
  return isParam == true ? responseName + 'Request' : responseName + 'Response';
}
