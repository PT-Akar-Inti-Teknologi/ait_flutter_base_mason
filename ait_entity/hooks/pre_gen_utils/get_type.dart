part of '../pre_gen.dart';

String getType(String key, dynamic items) {
  String dataType = '';
  dataType = items.runtimeType.toString();
  if (dataType == '_Map<String, dynamic>') {
    dataType = key.pascalCase;
  }
  if (items is List) {
    (items).forEach(
      (element) {
        dataType = element.runtimeType.toString();
        if (element.runtimeType.toString() == '_Map<String, dynamic>') {
          dataType = key.pascalCase;
        }
      },
    );
  }
  return dataType;
}

dynamic getDefaultValue(dynamic value) {
  if (value is String) return "";
  if (value is List) return [];
  if (value is num)
    return 0;
  else
    return '';
}
