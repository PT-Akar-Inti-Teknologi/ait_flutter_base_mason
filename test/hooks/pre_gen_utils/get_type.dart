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
        dataType = 'List<${element.runtimeType}>';
        if (dataType == 'List<_Map<String, dynamic>>') {
          dataType = 'List<${key.pascalCase}>';
        }
      },
    );
  }
  return dataType;
}
