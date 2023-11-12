import 'package:freezed_annotation/freezed_annotation.dart';

part 'users.freezed.dart';

@freezed
class Users with _$Users {
  const factory Users({
    
    
    required Int id,
    
    
    required Double point,
    
    
    required String pin,
    
    required List<List&lt;String&gt;> detail,
    
    
    
    required Profile profile,
    
    required List<List&lt;MemberPreferences&gt;> memberPreferences,
    
    
    
    required String name,
    
  }) = _Users;
}











@freezed
class Profile with _$Profile {
  const factory Profile({
    
    
    required String phoneNumber,
    
    
    required String email,
    
    
    required String fullname,
    
  }) = _Profile;
}
  
  
  
  
  
  
  



@freezed
class List&lt;MemberPreferences&gt; with _$List&lt;MemberPreferences&gt; {
  const factory List&lt;MemberPreferences&gt;({
    
    
    required Int id,
    
    
    required String name,
    
    
    required Int id,
    
    
    required String name,
    
  }) = _List&lt;MemberPreferences&gt;;
}
  
  
  
  
  
  
  
  
  




