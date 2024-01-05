import 'package:freezed_annotation/freezed_annotation.dart';

part '{{response.snakeCase()}}.freezed.dart';
part '{{response.snakeCase()}}.g.dart';

{{> response_base }}
{{#object}}
{{#is_object}}
{{> response_child_base}}
{{/is_object}}
{{/object}}
