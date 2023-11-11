import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}.freezed.dart';

@freezed
class {{entity}} with _${{entity}} {
  const factory {{entity}}({
    {{#object}}
    {{#is_list}}required List<{{type.pascalCase()}}> {{name.camelCase()}},{{/is_list}}
    {{^is_list}}required {{type.pascalCase()}} {{name.camelCase()}},{{/is_list}}
    {{/object}}
  }) = _{{entity}};
}

{{#object}}
{{#is_object}}
@freezed
class {{type.pascalCase()}} with _${{type.pascalCase()}} {
  const factory {{type.pascalCase()}}({
    {{#object}}
    {{#is_list}}required List<{{type.pascalCase()}}> {{name.camelCase()}},{{/is_list}}
    {{^is_list}}required {{type.pascalCase()}} {{name.camelCase()}},{{/is_list}}
    {{/object}}
  }) = _{{type.pascalCase()}};
}
  {{#object}}
  {{#is_object}}
  @freezed
  class {{type.pascalCase()}} with _${{type.pascalCase()}} {
    const factory {{type.pascalCase()}}({
      {{#object}}
      {{#is_list}}required List<{{type.pascalCase()}}> {{name.camelCase()}},{{/is_list}}
      {{^is_list}}required {{type.pascalCase()}} {{name.camelCase()}},{{/is_list}}
      {{/object}}
    }) = _{{type.pascalCase()}};
  }
  {{/is_object}}
  {{/object}}
{{/is_object}}
{{/object}}
