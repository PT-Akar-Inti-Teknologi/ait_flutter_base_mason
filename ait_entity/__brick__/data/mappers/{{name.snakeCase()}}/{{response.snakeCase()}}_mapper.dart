import '../../models/{{name.snakeCase()}}/{{response.snakeCase()}}.dart';
import '../../../domain/entities/{{name.snakeCase()}}/{{name.snakeCase()}}.dart';

{{> mapper_base }}
{{#object}}
{{#is_object}}
{{> mapper_child_base}}
{{/is_object}}
{{/object}}
