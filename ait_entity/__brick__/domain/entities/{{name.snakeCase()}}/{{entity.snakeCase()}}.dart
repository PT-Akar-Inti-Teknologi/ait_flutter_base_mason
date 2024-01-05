import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}.freezed.dart';

@freezed
class {{entity}} with _${{entity}} {
  const factory {{entity}}({
    {{> entity_variable_base}}
  }) = _{{entity}};
}
{{#object}}
{{#is_object}}
{{> entity_child_base}}
{{/is_object}}
{{/object}}
