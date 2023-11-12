import '../../models/{{name.snakeCase()}}/{{response.snakeCase()}}.dart';
import '../../../domain/entities/{{name.snakeCase()}}/{{name.snakeCase()}}.dart';

extension {{response}}Mapper on {{response}} {
  {{entity}} get toEntity {
      return {{entity}}(
    {{#object}}
    {{^is_object}}
      {{^is_string}}{{name.camelCase()}}: {{name.camelCase()}} ?? {{default}},{{/is_string}}
      {{#is_string}}{{name.camelCase()}}: {{name.camelCase()}} ?? '{{default}}',{{/is_string}}
    {{/is_object}}
    {{#is_object}}
      {{^is_list}}{{name.camelCase()}}: {{name.camelCase()}}?.toEntity ?? const {{type}}Response().toEntity,{{/is_list}}
      {{#is_list}}{{name.camelCase()}}: {{name.camelCase()}}?.map((e)=>e.toEntity).toList() ?? [],{{/is_list}}
    {{/is_object}}
    {{/object}}
      );
    }
  }

{{#object}}
{{#is_object}}
extension {{type}}ResponseMapper on {{type}}Response {
  {{type}} get toEntity {
      return {{type}}(
    {{#object}}
    {{^is_object}}
      {{^is_string}}{{name.camelCase()}}: {{name.camelCase()}} ?? {{default}},{{/is_string}}
      {{#is_string}}{{name.camelCase()}}: {{name.camelCase()}} ?? '{{default}}' ,{{/is_string}}
    {{/is_object}}
    {{#is_object}}
      {{^is_list}}{{name.camelCase()}}: {{name.camelCase()}}?.toEntity ?? const {{type}}Response().toEntity,{{/is_list}}
      {{#is_list}}{{name.camelCase()}}: {{name.camelCase()}}?.map((e)=>e.toEntity).toList() ?? [],{{/is_list}}
    {{/is_object}}
    {{/object}}
      );
    }
  }
{{#object}}
{{#is_object}}
extension {{type}}ResponseMapper on {{type}}Response {
  {{type}} get toEntity {
      return {{type}}(
    {{#object}}
    {{^is_object}}
      {{^is_string}}{{name.camelCase()}}: {{name.camelCase()}} ?? {{default}},{{/is_string}}
      {{#is_string}}{{name.camelCase()}}: {{name.camelCase()}} ?? '{{default}}' ,{{/is_string}}
    {{/is_object}}
    {{#is_object}}
      {{^is_list}}{{name.camelCase()}}: {{name.camelCase()}}?.toEntity ?? const {{type}}Response().toEntity,{{/is_list}}
      {{#is_list}}{{name.camelCase()}}: {{name.camelCase()}}?.map((e)=>e.toEntity).toList() ?? [],{{/is_list}}
    {{/is_object}}
    {{/object}}
      );
    }
  }
{{/is_object}}
{{/object}}
{{/is_object}}
{{/object}}
