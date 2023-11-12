import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:mason/mason.dart';

part 'pre_gen_utils/get_type.dart';
part 'pre_gen_utils/get_is_object.dart';

void run(HookContext context) async {
  final name = context.vars['name'];
  final entity = '${name.toString().pascalCase}';
  final response = '${name.toString().pascalCase}Response';
  final data = await context.vars;
  final remapedData = remap(data);
  final joinedData = {
    "entity": entity,
    "response": response,
    "object": remapedData,
  };
  context.vars.addAll(joinedData);
  // write temp json file
  String jsonString = jsonEncode(context.vars);
  String currentDirectory = Directory.current.path;
  String filePath = path.join(currentDirectory, 'config.json');
  File(filePath).writeAsStringSync(jsonString);
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
    return data.map((e) => remap(e)).toList().expand((i) => i).toList();
  }
}
