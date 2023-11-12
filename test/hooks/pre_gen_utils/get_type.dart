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
        if (dataType == 'List<_Map<String, dynamic>>') {
          dataType = key.pascalCase;
        }
      },
    );
  }
  return dataType;
}
