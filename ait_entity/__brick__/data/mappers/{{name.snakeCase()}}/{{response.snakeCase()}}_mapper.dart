import '../../models/{{name.snakeCase()}}/{{response.snakeCase()}}.dart';
import '../../../domain/entities/{{name.snakeCase()}}/{{name.snakeCase()}}.dart';

extension {{response}}Mapper on {{response}} {
  {{entity}} get toEntity {
      return {{entity}}(
    {{#object}}
    {{^is_object}}
      {{^is_list}}{{name.camelCase()}}: {{name.camelCase()}} ?? '',{{/is_list}}
      {{#is_list}}{{name.camelCase()}}: {{name.camelCase()}} ?? [],{{/is_list}}
    {{/is_object}}
    {{#is_object}}
      {{^is_list}}{{name.camelCase()}}: {{name.camelCase()}}?.toEntity ?? const {{type.pascalCase()}}Response().toEntity,{{/is_list}}
      {{#is_list}}{{name.camelCase()}}: {{name.camelCase()}}?.map((e)=>e.toEntity).toList() ?? [],{{/is_list}}
    {{/is_object}}
    {{/object}}
      );
    }
  }

{{#object}}
{{#is_object}}
extension {{type.pascalCase()}}ResponseMapper on {{type.pascalCase()}}Response {
  {{type.pascalCase()}} get toEntity {
      return {{type.pascalCase()}}(
    {{#object}}
    {{^is_object}}
      {{^is_list}}{{name.camelCase()}}: {{name.camelCase()}} ?? '',{{/is_list}}
      {{#is_list}}{{name.camelCase()}}: {{name.camelCase()}} ?? [],{{/is_list}}
    {{/is_object}}
    {{#is_object}}
      {{^is_list}}{{name.camelCase()}}: {{name.camelCase()}}?.toEntity ?? const {{type.pascalCase()}}Response().toEntity,{{/is_list}}
      {{#is_list}}{{name.camelCase()}}: {{name.camelCase()}}?.map((e)=>e.toEntity).toList() ?? [],{{/is_list}}
    {{/is_object}}
    {{/object}}
      );
    }
  }
{{#object}}
{{#is_object}}
extension {{type.pascalCase()}}ResponseMapper on {{type.pascalCase()}}Response {
  {{type.pascalCase()}} get toEntity {
      return {{type.pascalCase()}}(
    {{#object}}
    {{^is_object}}
      {{^is_list}}{{name.camelCase()}}: {{name.camelCase()}} ?? '',{{/is_list}}
      {{#is_list}}{{name.camelCase()}}: {{name.camelCase()}} ?? [],{{/is_list}}
    {{/is_object}}
    {{#is_object}}
      {{^is_list}}{{name.camelCase()}}: {{name.camelCase()}}?.toEntity ?? const {{type.pascalCase()}}Response().toEntity,{{/is_list}}
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
