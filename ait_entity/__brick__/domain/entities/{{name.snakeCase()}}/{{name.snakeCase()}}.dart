import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}.freezed.dart';

@freezed
class {{entity}} with _${{entity}} {
  const factory {{entity}}({
    {{#object}}
    {{#is_list}}required List<{{type}}> {{name.camelCase()}},{{/is_list}}
    {{^is_list}}required {{type}} {{name.camelCase()}},{{/is_list}}
    {{/object}}
  }) = _{{entity}};
}

{{#object}}
{{#is_object}}
@freezed
class {{type}} with _${{type}} {
  const factory {{type}}({
    {{#object}}
    {{#is_list}}required List<{{type}}> {{name.camelCase()}},{{/is_list}}
    {{^is_list}}required {{type}} {{name.camelCase()}},{{/is_list}}
    {{/object}}
  }) = _{{type}};
}
  {{#object}}
  {{#is_object}}
  @freezed
  class {{type}} with _${{type}} {
    const factory {{type}}({
      {{#object}}
      {{#is_list}}required List<{{type}}> {{name.camelCase()}},{{/is_list}}
      {{^is_list}}required {{type}} {{name.camelCase()}},{{/is_list}}
      {{/object}}
    }) = _{{type}};
  }
  {{/is_object}}
  {{/object}}
{{/is_object}}
{{/object}}
