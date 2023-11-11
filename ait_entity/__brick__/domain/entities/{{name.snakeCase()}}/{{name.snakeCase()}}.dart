import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}.freezed.dart';

@freezed
class {{entity}} with _${{entity}} {
  const factory {{entity}}({
    {{#object}}
    required {{type.pascalCase()}} {{name.camelCase()}},
    {{/object}}
  }) = _{{entity}};
}

{{#object}}
{{#is_object}}
@freezed
class {{type.pascalCase()}} with _${{type.pascalCase()}} {
  const factory {{type.pascalCase()}}({
    {{#object}}
    required {{type.pascalCase()}} {{name.camelCase()}},
    {{/object}}
  }) = _{{type.pascalCase()}};
}
  {{#object}}
  {{#is_object}}
  @freezed
  class {{type.pascalCase()}} with _${{type.pascalCase()}} {
    const factory {{type.pascalCase()}}({
      {{#object}}
      required {{type.pascalCase()}} {{name.camelCase()}},
      {{/object}}
    }) = _{{type.pascalCase()}};
  }
  {{/is_object}}
  {{/object}}
{{/is_object}}
{{/object}}
