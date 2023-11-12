part of '../pre_gen.dart';

bool getIsObject(dynamic value) {
  if (value is List<dynamic>) {
    if (value.first is Map<String, dynamic>) return true;
    return false;
  }
  if (value is Map<String, dynamic>) return true;
  return false;
}
