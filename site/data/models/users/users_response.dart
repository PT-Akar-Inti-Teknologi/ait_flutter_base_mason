import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_response.freezed.dart';
part 'users_response.g.dart';

@freezed
class UsersResponse with _$UsersResponse {
  const factory UsersResponse({
    
    
    
      
       Int? id,
    
    
    
    
      
       Double? point,
    
    
    
    
      
       String? pin,
    
    
    
    
       List<List&lt;String&gt;>? detail,
      
    
    
    
      
       ProfileResponse? profile,
    
    
    
    
       List<List&lt;MemberPreferences&gt;Response>? memberPreferences,
      
    
    
    
    
    
      
       String? name,
    
    
  }) = _UsersResponse;

  factory UsersResponse.fromJson(Map<String, dynamic> json) =>
      _$UsersResponseFromJson(json);
}










@freezed
class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    
    
    
      
       String? phoneNumber,
    
    
    
    
      
       String? email,
    
    
    
    
      
       String? fullname,
    
    
  }) = _ProfileResponse;
  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}
  
  
  
  
  
  
  



@freezed
class List&lt;MemberPreferences&gt;Response with _$List&lt;MemberPreferences&gt;Response {
  const factory List&lt;MemberPreferences&gt;Response({
    
    
    
      
       Int? id,
    
    
    
    
      
       String? name,
    
    
    
    
      
       Int? id,
    
    
    
    
      
       String? name,
    
    
  }) = _List&lt;MemberPreferences&gt;Response;
  factory List&lt;MemberPreferences&gt;Response.fromJson(Map<String, dynamic> json) =>
      _$List&lt;MemberPreferences&gt;ResponseFromJson(json);
}
  
  
  
  
  
  
  
  
  




