class NotificationsModel {
  List<Notification>? data;

  NotificationsModel({this.data});

  NotificationsModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Notification>[];
      json['data'].forEach((v) {
        data!.add(Notification.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Notification {
  String? type;
  String? id;
  NotificationData? data;
  String? readAt;
  String? createdAt;

  Notification({this.type, this.id, this.data, this.readAt, this.createdAt});

  Notification.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
    data = json['data'] != null
        ? new NotificationData.fromJson(json['data'])
        : null;
    readAt = json['read_at']?.toString();
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['id'] = this.id;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['read_at'] = this.readAt;
    data['created_at'] = this.createdAt;
    return data;
  }
}

class NotificationData {
  String? title;
  String? text;
  String? createdAt;
  Data? data;

  NotificationData({this.title, this.text, this.createdAt, this.data});

  NotificationData.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    text = json['text'];
    createdAt = json['created_at'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['text'] = this.text;
    data['created_at'] = this.createdAt;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;

  Data({this.id});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    return data;
  }
}
