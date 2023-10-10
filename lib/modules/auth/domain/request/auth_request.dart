import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class AuthRequest {
  String? name;
  String? email;
  String? phone;
  String? type;
  String? createdAt;
  String? token;
  String? password;
  String? agree;
  String? fcm_token;
  String? password_confirmation;
  AuthRequest({
    this.name,
    this.email,
    this.phone,
    this.type,
    this.createdAt,
    this.fcm_token,
    this.token,
    this.password,
    this.agree,
    this.password_confirmation,
  });

  Map<String, dynamic> register() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'phone': phone,
      'type': type,
      'createdAt': createdAt,
      'password': password,
      'agree': agree,
      'password_confirmation': password_confirmation,
      'fcm_token': fcm_token,
    };
  }

  Map<String, dynamic> login() {
    return <String, dynamic>{
      'fcm_token': fcm_token,
      'email': email,
      'password': password,
    };
  }

//   factory AuthRequest.register(Map<String, dynamic> map) {
//     return AuthRequest(
//       name: map['name'] != null ? map['name'] as String : null,
//       email: map['email'] != null ? map['email'] as String : null,
//       phone: map['phone'] != null ? map['phone'] as String : null,
//       type: map['type'] != null ? map['type'] as String : null,
//       createdAt: map['createdAt'] != null ? map['createdAt'] as String : null,
//       token: map['token'] != null ? map['token'] as String : null,
//       password: map['password'] != null ? map['password'] as String : null,
//       agree: map['agree'] != null ? map['agree'] as String : null,
//       password_confirmation: map['password_confirmation'] != null ? map['password_confirmation'] as String : null,
//     );
//   }
// factory AuthRequest.login(Map<String, dynamic> map) {
//     return AuthRequest(
//       email: map['email'] != null ? map['email'] as String : null,
//       password: map['password'] != null ? map['password'] as String : null,
//     );
//   }
}
