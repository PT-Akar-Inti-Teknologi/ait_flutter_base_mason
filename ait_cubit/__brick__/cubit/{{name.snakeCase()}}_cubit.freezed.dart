// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '{{name.snakeCase()}}_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _${{name.pascalCase()}}State {
  FormzStatus get status => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  ${{name.pascalCase()}}StateCopyWith<{{name.pascalCase()}}State> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class ${{name.pascalCase()}}StateCopyWith<$Res> {
  factory ${{name.pascalCase()}}StateCopyWith(
          {{name.pascalCase()}}State value, $Res Function({{name.pascalCase()}}State) then) =
      _${{name.pascalCase()}}StateCopyWithImpl<$Res, {{name.pascalCase()}}State>;
  @useResult
  $Res call({FormzStatus status, Failure? failure});
}

/// @nodoc
class _${{name.pascalCase()}}StateCopyWithImpl<$Res, $Val extends {{name.pascalCase()}}State>
    implements ${{name.pascalCase()}}StateCopyWith<$Res> {
  _${{name.pascalCase()}}StateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$${{name.pascalCase()}}StateImplCopyWith<$Res>
    implements ${{name.pascalCase()}}StateCopyWith<$Res> {
  factory _$${{name.pascalCase()}}StateImplCopyWith(_${{name.pascalCase()}}StateImpl value,
          $Res Function(_${{name.pascalCase()}}StateImpl) then) =
      __$${{name.pascalCase()}}StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormzStatus status, Failure? failure});
}

/// @nodoc
class __$${{name.pascalCase()}}StateImplCopyWithImpl<$Res>
    extends _${{name.pascalCase()}}StateCopyWithImpl<$Res, _${{name.pascalCase()}}StateImpl>
    implements _$${{name.pascalCase()}}StateImplCopyWith<$Res> {
  __$${{name.pascalCase()}}StateImplCopyWithImpl(
      _${{name.pascalCase()}}StateImpl _value, $Res Function(_${{name.pascalCase()}}StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = freezed,
  }) {
    return _then(_${{name.pascalCase()}}StateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _${{name.pascalCase()}}StateImpl extends _{{name.pascalCase()}}State {
  const _${{name.pascalCase()}}StateImpl({required this.status, this.failure}) : super._();

  @override
  final FormzStatus status;
  @override
  final Failure? failure;

  @override
  String toString() {
    return '{{name.pascalCase()}}State(status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _${{name.pascalCase()}}StateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$${{name.pascalCase()}}StateImplCopyWith<_${{name.pascalCase()}}StateImpl> get copyWith =>
      __$${{name.pascalCase()}}StateImplCopyWithImpl<_${{name.pascalCase()}}StateImpl>(
          this, _$identity);
}

abstract class _{{name.pascalCase()}}State extends {{name.pascalCase()}}State {
  const factory _{{name.pascalCase()}}State(
      {required final FormzStatus status,
      final Failure? failure}) = _${{name.pascalCase()}}StateImpl;
  const _{{name.pascalCase()}}State._() : super._();

  @override
  FormzStatus get status;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$${{name.pascalCase()}}StateImplCopyWith<_${{name.pascalCase()}}StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
