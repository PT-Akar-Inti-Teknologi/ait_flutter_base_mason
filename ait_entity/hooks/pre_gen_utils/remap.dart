part of '../pre_gen.dart';

List<Map<String, dynamic>> remap(Map<String, dynamic> data) {
  List<Map<String, dynamic>> remapedData = [];
  data.forEach(
    (key, value) {
      Map<String, dynamic> remapedItems = {};
      final String type = getType(key, value);
      final bool isObject = getIsObject(value);
      final bool isList = value.runtimeType == List;
      RegExp snakeCaseRegExp = RegExp(r'^[a-z]+(_[a-z]+)*$');
      final bool isSnakeCase =
          snakeCaseRegExp.hasMatch(key) && key.contains('_');
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
