import 'package:common_dependency/common_dependency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part '{{name.snakeCase()}}_state.dart';
part '{{name.snakeCase()}}_cubit.freezed.dart';

class {{name.pascalCase()}}Cubit extends Cubit<{{name.pascalCase()}}State> with SyncEmit {
    {{name.pascalCase()}}Cubit():super({{name.pascalCase()}}State.initial());
    {{#use_formx}}test{{/use_formx}}
  }
