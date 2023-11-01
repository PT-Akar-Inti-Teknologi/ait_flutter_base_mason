part of '{{name.snakeCase()}}_cubit.dart';

@freezed
class {{name.pascalCase()}}State with _${{name.pascalCase()}}State{
    const {{name.pascalCase()}}State._();
    const factory {{name.pascalCase()}}State ({
        required FormzStatus status,
        Failure? failure,
      }) = _{{name.pascalCase()}}State;

     factory {{name.pascalCase()}}State.initial() => const {{name.pascalCase()}}State(
      status : FormzStatus.pure,
    );
  }
