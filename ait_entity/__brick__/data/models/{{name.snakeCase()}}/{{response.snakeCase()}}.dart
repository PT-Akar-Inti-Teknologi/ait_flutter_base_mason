import 'package:freezed_annotation/freezed_annotation.dart';

part '{{response.snakeCase()}}.freezed.dart';
part '{{response.snakeCase()}}.g.dart';

@freezed
class {{response}} with _${{response}} {
  const factory {{response}}({
    {{#object}}
    {{#is_object}}
      {{#is_list}} List<{{type.pascalCase()}}Response>? {{name.camelCase()}},{{/is_list}}
      {{^is_list}} {{type.pascalCase()}}Response? {{name.camelCase()}},{{/is_list}}
    {{/is_object}}
    {{^is_object}}
      {{#is_list}} List<{{type.pascalCase()}}>? {{name.camelCase()}},{{/is_list}}
      {{^is_list}} {{type.pascalCase()}}? {{name.camelCase()}},{{/is_list}}
    {{/is_object}}
    {{/object}}
  }) = _{{response}};

  factory {{response}}.fromJson(Map<String, dynamic> json) =>
      _${{response}}FromJson(json);
}
{{#object}}
{{#is_object}}
@freezed
class {{type.pascalCase()}}Response with _${{type.pascalCase()}}Response {
  const factory {{type.pascalCase()}}Response({
    {{#object}}
    {{#is_object}}
      {{#is_list}} List<{{type.pascalCase()}}Response>? {{name.camelCase()}},{{/is_list}}
      {{^is_list}} {{type.pascalCase()}}Response? {{name.camelCase()}},{{/is_list}}
    {{/is_object}}
    {{^is_object}}
      {{#is_list}} List<{{type.pascalCase()}}>? {{name.camelCase()}},{{/is_list}}
      {{^is_list}} {{type.pascalCase()}}? {{name.camelCase()}},{{/is_list}}
    {{/is_object}}
    {{/object}}
  }) = _{{type.pascalCase()}}Response;
  factory {{type.pascalCase()}}Response.fromJson(Map<String, dynamic> json) =>
      _${{type.pascalCase()}}ResponseFromJson(json);
}
  {{#object}}
  {{#is_object}}
  @freezed
  class {{type.pascalCase()}}Response with _${{type.pascalCase()}}Response {
    const factory {{type.pascalCase()}}Response({
      {{#object}}
      {{#is_object}}
        {{#is_list}} List<{{type.pascalCase()}}Response>? {{name.camelCase()}},{{/is_list}}
        {{^is_list}} {{type.pascalCase()}}Response? {{name.camelCase()}},{{/is_list}}
      {{/is_object}}
      {{^is_object}}
        {{#is_list}} List<{{type.pascalCase()}}>? {{name.camelCase()}},{{/is_list}}
        {{^is_list}} {{type.pascalCase()}}? {{name.camelCase()}},{{/is_list}}
      {{/is_object}}
      {{/object}}
    }) = _{{type.pascalCase()}}Response;
    factory {{type.pascalCase()}}Response.fromJson(Map<String, dynamic> json) =>
        _${{type.pascalCase()}}ResponseFromJson(json);
  }
  {{/is_object}}
  {{/object}}
{{/is_object}}
{{/object}}
