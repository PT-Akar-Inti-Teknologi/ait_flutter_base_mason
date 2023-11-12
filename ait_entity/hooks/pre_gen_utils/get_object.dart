part of '../pre_gen.dart';

dynamic getObject(dynamic data) {
  if (data is Map<String, dynamic>) return remap(data);
  if (data is List<dynamic>) {
    return remap(data.first);
  }
}
