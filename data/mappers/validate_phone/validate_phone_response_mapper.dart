import '../../models/validate_phone/validate_phone_response.dart';
import '../../../domain/entities/validate_phone/validate_phone.dart';

extension ValidatePhoneResponseMapper on ValidatePhoneResponse {
  ValidatePhone get toEntity {
      return ValidatePhone(
    
    
      
      phoneNumber: phoneNumber ?? '',
    
    
    
    
      
      email: email ?? '',
    
    
    
    
      
      fullname: fullname ?? '',
    
    
    
    
      
      birthDate: birthDate ?? '',
    
    
    
    
      
      identityNumber: identityNumber ?? '',
    
    
    
    
      
      identityImage: identityImage ?? '',
    
    
    
    
      
      suspendDate: suspendDate ?? '',
    
    
    
    
      
      deletedAt: deletedAt ?? '',
    
    
    
    
      
      id: id ?? '',
    
    
    
    
      
      gender: gender ?? '',
    
    
    
    
      
      status: status ?? '',
    
    
    
    
      isVerified: isVerified ?? false,
      
    
    
    
    
      loginAttempt: loginAttempt ?? 0,
      
    
    
    
    
      
      createdAt: createdAt ?? '',
    
    
    
    
      
      updatedAt: updatedAt ?? '',
    
    
    
    
      
      secretId: secretId ?? '',
    
    
    
    
    
      responseMessage: responseMessage?.toEntity ?? const ResponseMessageResponse().toEntity,
      
    
    
    
    
      
      errorsField: errorsField?.map((e)=>e.toEntity).toList() ?? [],
    
    
    
      preferenceIds: preferenceIds ?? [],
      
    
    
    
      );
    }
  }



































extension ResponseMessageResponseMapper on ResponseMessageResponse {
  ResponseMessage get toEntity {
      return ResponseMessage(
    
    
      
      id: id ?? '' ,
    
    
    
    
      
      en: en ?? '' ,
    
    
    
      );
    }
  }








extension ErrorsFieldResponseMapper on ErrorsFieldResponse {
  ErrorsField get toEntity {
      return ErrorsField(
    
    
      
      field: field ?? '' ,
    
    
    
    
    
      message: message?.toEntity ?? const MessageResponse().toEntity,
      
    
    
      );
    }
  }




extension MessageResponseMapper on MessageResponse {
  Message get toEntity {
      return Message(
    
    
      
      id: id ?? '' ,
    
    
    
    
      
      en: en ?? '' ,
    
    
    
    
      
      currentLanguage: currentLanguage ?? '' ,
    
    
    
      );
    }
  }






