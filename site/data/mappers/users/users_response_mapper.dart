import '../../models/users/users_response.dart';
import '../../../domain/entities/users/users.dart';

extension UsersResponseMapper on UsersResponse {
  Users get toEntity {
      return Users(
    
    
      id: id ?? '',
      
    
    
    
    
      point: point ?? '',
      
    
    
    
    
      pin: pin ?? '',
      
    
    
    
    
      
      detail: detail ?? [],
    
    
    
    
    
      profile: profile?.toEntity ?? const ProfileResponse().toEntity,
      
    
    
    
    
      
      memberPreferences: memberPreferences?.map((e)=>e.toEntity).toList() ?? [],
    
    
    
      name: name ?? '',
      
    
    
    
      );
    }
  }











extension ProfileResponseMapper on ProfileResponse {
  Profile get toEntity {
      return Profile(
    
    
      phoneNumber: phoneNumber ?? '',
      
    
    
    
    
      email: email ?? '',
      
    
    
    
    
      fullname: fullname ?? '',
      
    
    
    
      );
    }
  }










extension List&lt;MemberPreferences&gt;ResponseMapper on List&lt;MemberPreferences&gt;Response {
  List&lt;MemberPreferences&gt; get toEntity {
      return List&lt;MemberPreferences&gt;(
    
    
      id: id ?? '',
      
    
    
    
    
      name: name ?? '',
      
    
    
    
    
      id: id ?? '',
      
    
    
    
    
      name: name ?? '',
      
    
    
    
      );
    }
  }













