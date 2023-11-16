part of '../pre_gen.dart';

List<Map<String, dynamic>> remap(Map<String, dynamic> data) {
  List<Map<String, dynamic>> remapedData = [];
  data.forEach(
    (key, value) {
      Map<String, dynamic> remapedItems = {};
      final String type = getType(key, value);
      final bool isObject = getIsObject(value);
      final bool isList = value.runtimeType == List;
      // Define a regular expression for snake case
      RegExp snakeCaseRegExp = RegExp(r'^[a-z]+(_[a-z]+)*$');
      // Check if the input matches the snake case pattern
      final bool isSnakeCase = snakeCaseRegExp.hasMatch(key);
      remapedItems.addAll(
        {
          "type": type,
          "name": key,
          "is_list": isList,
          "is_object": isObject,
          "default": getDefaultValue(value),
          "is_string": getDefaultValue(value) == "",
          "is_snake": isSnakeCase,
          if (isObject) "object": getObject(value),
        },
      );
      remapedData.add(remapedItems);
    },
  );
  return remapedData;
}
