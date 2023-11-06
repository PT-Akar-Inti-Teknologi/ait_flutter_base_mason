import 'package:common_dependency/common_dependency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
{{#use_formx}}import 'form/{{name.snakeCase()}}_form.dart';{{/use_formx}}
part '{{name.snakeCase()}}_state.dart';
part '{{name.snakeCase()}}_cubit.freezed.dart';

class {{cubit}} extends Cubit<{{state}}> with SyncEmit<{{state}}> {{#use_formx}}, 
        FormxStateManager,
        FormxBlocMixin<{{state}}>
  {{/use_formx}} {
  {{#use_formx}}
  @override
  final FormxMeta formxMeta;
  {{cubit}}._({required this.formxMeta}):super({{state}}.initial(formxMeta));
  factory {{cubit}}() => {{cubit}}._(
        formxMeta: {{cubit_formx}}(),
  );
  {{/use_formx}}
  {{^use_formx}}
  {{cubit}}():super({{state}}.initial());
  {{/use_formx}}
  }
