part of '{{name.snakeCase()}}_cubit.dart';

@freezed
class {{state}} with _${{state}} {{#use_formx}},
FormxBlocStateMixin<{{state}}>
{{/use_formx}}
implements BasePageState {
    const {{state}}._();
    const factory {{state}} ({
        required FormzStatus status,
        Failure? failure,
       {{#use_formx}} required FormxState formxState,{{/use_formx}}
      }) = _{{state}};

     factory {{state}}.initial({{#use_formx}}FormxMeta formxMeta{{/use_formx}}) => {{^use_formx}}const{{/use_formx}} {{state}}(
      status : FormzStatus.pure,
      {{#use_formx}}formxState: FormxState.withMeta(formxMeta),{{/use_formx}}
    );

  @override
  Failure? get errorState => failure;

  @override
  FormzStatus get statusState => status;
  {{#use_formx}}
  @override
  {{state}} copyWithForm(FormxState state) =>
      copyWith(formxState: state);
  {{/use_formx}}
  }
