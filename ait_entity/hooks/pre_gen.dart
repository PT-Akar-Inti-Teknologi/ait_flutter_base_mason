import 'package:mason/mason.dart';

part 'pre_gen_utils/get_type.dart';
part 'pre_gen_utils/get_is_object.dart';

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

List<Map<String, dynamic>> remap(Map<String, dynamic> data) {
  List<Map<String, dynamic>> remapedData = [];
  data.forEach(
    (key, value) {
      Map<String, dynamic> remapedItems = {};
      final String type = getType(key, value);
      final bool isObject = getIsObject(value);
      final bool isList = value.runtimeType == List;
      remapedItems.addAll(
        {
          "type": type,
          "name": key,
          "is_list": isList,
          "is_object": isObject,
          "default": getDefaultValue(value),
          "is_string": getDefaultValue(value) == "",
          if (isObject) "object": getObject(value),
        },
      );
      remapedData.add(remapedItems);
    },
  );
  return remapedData;
}

dynamic getObject(dynamic data) {
  if (data is Map<String, dynamic>) return remap(data);
  if (data is List<dynamic>) {
    return remap(data.first);
  }
}
