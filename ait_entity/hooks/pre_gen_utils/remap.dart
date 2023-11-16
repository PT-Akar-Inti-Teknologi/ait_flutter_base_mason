part of '../pre_gen.dart';

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
