import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_phone.freezed.dart';

@freezed
class ValidatePhone with _$ValidatePhone {
  const factory ValidatePhone({
    
    
    required String phoneNumber,
    
    
    required String email,
    
    
    required String fullname,
    
    
    required String birthDate,
    
    
    required String identityNumber,
    
    
    required String identityImage,
    
    
    required String suspendDate,
    
    
    required String deletedAt,
    
    
    required String id,
    
    
    required String gender,
    
    
    required String status,
    
    
    required bool isVerified,
    
    
    required int loginAttempt,
    
    
    required String createdAt,
    
    
    required String updatedAt,
    
    
    required String secretId,
    
    
    required ResponseMessage responseMessage,
    
    required List<ErrorsField> errorsField,
    
    
    required List<String> preferenceIds,
    
    
  }) = _ValidatePhone;
}



































@freezed
class ResponseMessage with _$ResponseMessage {
  const factory ResponseMessage({
    
    
    required String id,
    
    
    required String en,
    
  }) = _ResponseMessage;
}
  
  
  
  
  



@freezed
class ErrorsField with _$ErrorsField {
  const factory ErrorsField({
    
    
    required String field,
    
    
    required Message message,
    
  }) = _ErrorsField;
}
  
  
  
  
  @freezed
  class Message with _$Message {
    const factory Message({
      
      
      required String id,
      
      
      required String en,
      
      
      required String currentLanguage,
      
    }) = _Message;
  }
  
  




