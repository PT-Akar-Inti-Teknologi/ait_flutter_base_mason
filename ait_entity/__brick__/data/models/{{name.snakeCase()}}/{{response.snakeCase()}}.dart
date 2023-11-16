import 'package:freezed_annotation/freezed_annotation.dart';

part '{{response.snakeCase()}}.freezed.dart';
part '{{response.snakeCase()}}.g.dart';

@freezed
class {{response}} with _${{response}} {
  const factory {{response}}({
    {{#object}}
    {{#is_object}}
    {{#is_snake}}@JsonKey(name:{{name.snakeCase()}}){{/is_snake}} {{^is_list}} {{type}}Response? {{name.camelCase()}},{{/is_list}}
    {{#is_snake}}@JsonKey(name:{{name.snakeCase()}}){{/is_snake}}  {{#is_list}} List<{{type}}Response>? {{name.camelCase()}},{{/is_list}}
    {{/is_object}}
    {{^is_object}}
    {{#is_snake}}@JsonKey(name:{{name.snakeCase()}}){{/is_snake}} {{#is_list}} List<{{type}}>? {{name.camelCase()}},{{/is_list}}
    {{#is_snake}}@JsonKey(name:{{name.snakeCase()}}){{/is_snake}} {{^is_list}} {{type}}? {{name.camelCase()}},{{/is_list}}
    {{/is_object}}
    {{/object}}
  }) = _{{response}};

  factory {{response}}.fromJson(Map<String, dynamic> json) =>
      _${{response}}FromJson(json);
}
{{#object}}
{{#is_object}}
@freezed
class {{type}}Response with _${{type}}Response {
  const factory {{type}}Response({
    {{#object}}
    {{#is_object}}
      {{#is_snake}}@JsonKey(name:{{name.snakeCase()}}){{/is_snake}} {{#is_list}} List<{{type}}Response>? {{name.camelCase()}},{{/is_list}}
      {{#is_snake}}@JsonKey(name:{{name.snakeCase()}}){{/is_snake}} {{^is_list}} {{type}}Response? {{name.camelCase()}},{{/is_list}}
    {{/is_object}}
    {{^is_object}}
      {{#is_snake}}@JsonKey(name:{{name.snakeCase()}}){{/is_snake}} {{#is_list}} List<{{type}}>? {{name.camelCase()}},{{/is_list}}
      {{#is_snake}}@JsonKey(name:{{name.snakeCase()}}){{/is_snake}} {{^is_list}} {{type}}? {{name.camelCase()}},{{/is_list}}
    {{/is_object}}
    {{/object}}
  }) = _{{type}}Response;
  factory {{type}}Response.fromJson(Map<String, dynamic> json) =>
      _${{type}}ResponseFromJson(json);
}
  {{#object}}
  {{#is_object}}
  @freezed
  class {{type}}Response with _${{type}}Response {
    const factory {{type}}Response({
      {{#object}}
      {{#is_object}}
        {{{#is_snake}}@JsonKey(name:{{name.snakeCase()}}){{/is_snake}} {#is_list}} List<{{type}}Response>? {{name.camelCase()}},{{/is_list}}
        {{#is_snake}}@JsonKey(name:{{name.snakeCase()}}){{/is_snake}} {{^is_list}} {{type}}Response? {{name.camelCase()}},{{/is_list}}
      {{/is_object}}
      {{^is_object}}
        {{#is_snake}}@JsonKey(name:{{name.snakeCase()}}){{/is_snake}} {{#is_list}} List<{{type}}>? {{name.camelCase()}},{{/is_list}}
        {{#is_snake}}@JsonKey(name:{{name.snakeCase()}}){{/is_snake}} {{^is_list}} {{type}}? {{name.camelCase()}},{{/is_list}}
      {{/is_object}}
      {{/object}}
    }) = _{{type}}Response;
    factory {{type}}Response.fromJson(Map<String, dynamic> json) =>
        _${{type}}ResponseFromJson(json);
  }
  {{/is_object}}
  {{/object}}
{{/is_object}}
{{/object}}
