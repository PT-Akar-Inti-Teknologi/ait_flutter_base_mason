import '../../models/{{name.snakeCase()}}/{{response.snakeCase()}}.dart';
import '../../../domain/entities/{{name.snakeCase()}}/{{name.snakeCase()}}{{#is_param}}_param{{/is_param}}.dart';

{{#is_param}}
{{> mapper_param_base }}
{{#object}}
{{#is_object}}
{{> mapper_param_child_base}}
{{/is_object}}
{{/object}}
{{/is_param}}

{{^is_param}}
{{> mapper_base }}
{{#object}}
{{#is_object}}
{{> mapper_child_base}}
{{/is_object}}
{{/object}}
{{/is_param}}
