import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_phone_response.freezed.dart';
part 'validate_phone_response.g.dart';

@freezed
class ValidatePhoneResponse with _$ValidatePhoneResponse {
  const factory ValidatePhoneResponse({
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? email,
    String? fullname,
    @JsonKey(name: 'birth_date') String? birthDate,
    @JsonKey(name: 'identity_number') String? identityNumber,
    @JsonKey(name: 'identity_image') String? identityImage,
    @JsonKey(name: 'suspend_date') String? suspendDate,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    String? id,
    String? gender,
    String? status,
    @JsonKey(name: 'is_verified') bool? isVerified,
    @JsonKey(name: 'login_attempt') int? loginAttempt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'secret_id') String? secretId,
    @JsonKey(name: 'response_message') ResponseMessageResponse? responseMessage,
    @JsonKey(name: 'errors_field') List<ErrorsFieldResponse>? errorsField,
    @JsonKey(name: 'preference_ids') List<String>? preferenceIds,
  }) = _ValidatePhoneResponse;

  factory ValidatePhoneResponse.fromJson(Map<String, dynamic> json) =>
      _$ValidatePhoneResponseFromJson(json);
}

@freezed
class ResponseMessageResponse with _$ResponseMessageResponse {
  const factory ResponseMessageResponse({
    String? id,
    String? en,
  }) = _ResponseMessageResponse;
  factory ResponseMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$ResponseMessageResponseFromJson(json);
}

@freezed
class ErrorsFieldResponse with _$ErrorsFieldResponse {
  const factory ErrorsFieldResponse({
    String? field,
    MessageResponse? message,
  }) = _ErrorsFieldResponse;
  factory ErrorsFieldResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorsFieldResponseFromJson(json);
}

@freezed
class MessageResponse with _$MessageResponse {
  const factory MessageResponse({
    String? id,
    String? en,
    @JsonKey(name: 'current_language') String? currentLanguage,
  }) = _MessageResponse;
  factory MessageResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageResponseFromJson(json);
}
