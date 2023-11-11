import 'package:freezed_annotation/freezed_annotation.dart';

part '{{response.snakeCase()}}.freezed.dart';
part '{{response.snakeCase()}}.g.dart';

@freezed
class {{response}} with _${{response}} {
  const factory {{response}}({
    {{#object}}
    {{#is_list}} List<{{type.pascalCase()}}>? {{name.camelCase()}},{{/is_list}}
    {{^is_list}} {{type.pascalCase()}}? {{name.camelCase()}},{{/is_list}}
    {{/object}}
  }) = _{{response}};

  factory {{response}}.fromJson(Map<String, dynamic> json) =>
      _${{response}}FromJson(json);
}
{{#object}}
{{#is_object}}
@freezed
class {{type.pascalCase()}} with _${{type.pascalCase()}} {
  const factory {{type.pascalCase()}}({
    {{#object}}
    {{#is_list}} List<{{type.pascalCase()}}>? {{name.camelCase()}},{{/is_list}}
    {{^is_list}} {{type.pascalCase()}}? {{name.camelCase()}},{{/is_list}}
    {{/object}}
  }) = _{{type.pascalCase()}};
  factory {{type.pascalCase()}}.fromJson(Map<String, dynamic> json) =>
      _${{type.pascalCase()}}FromJson(json);
}
  {{#object}}
  {{#is_object}}
  @freezed
  class {{type.pascalCase()}} with _${{type.pascalCase()}} {
    const factory {{type.pascalCase()}}({
      {{#object}}
      {{#is_list}} List<{{type.pascalCase()}}>? {{name.camelCase()}},{{/is_list}}
      {{^is_list}} {{type.pascalCase()}}? {{name.camelCase()}},{{/is_list}}
      {{/object}}
    }) = _{{type.pascalCase()}};
    factory {{type.pascalCase()}}.fromJson(Map<String, dynamic> json) =>
        _${{type.pascalCase()}}FromJson(json);
  }
  {{/is_object}}
  {{/object}}
{{/is_object}}
{{/object}}
