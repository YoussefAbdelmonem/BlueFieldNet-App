class UserModel {
  String? name;
  String? email;
  String? type;
  String? createdAt;
  String? token;
  String? password;
  String? fcm_token;

  UserModel(
      {this.name,
      this.email,
      this.type,
      this.createdAt,
      this.token,
      this.fcm_token,
      this.password});

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    type = json['type'];
    createdAt = json['created_at'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['type'] = this.type;
    data['created_at'] = this.createdAt;
    data['token'] = this.token;
    return data;
  }
}
