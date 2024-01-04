import 'package:common_dependency/common_dependency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part '{{name.snakeCase()}}_state.dart';
part '{{name.snakeCase()}}_cubit.freezed.dart';

class {{cubit}} extends Cubit<{{state}}> with SyncEmit<{{state}}> {{#use_formx}}, 
        FormxStateManager,
        FormxBlocMixin<{{state}}>
  {{/use_formx}} implements BasePageListener<{{state}}> {
  {{#use_formx}}
  @override
  final FormxMeta formxMeta;
  {{cubit}}(this.formxMeta):super({{state}}.initial(formxMeta));
  {{/use_formx}}
  {{^use_formx}}
  {{cubit}}():super({{state}}.initial());
  {{/use_formx}}
  @override
  clearErrorState() {
    syncEmit((state) => state.copyWith(failure: null));
    }
  }
