class PostJobModel {
  String? status;
  String? message;
  PostJob? data;

  PostJobModel({this.status, this.message, this.data});

  PostJobModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new PostJob.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class PostJob {
  int? id;
  int? userId;
  String? username;
  String? title;
  String? description;
  String? budget;
  String? categoryId;
  String? category;
  String? projectTypeId;
  String? projectType;
  String? subCategoryId;
  String? subCategory;
  String? questionId;
  String? question;
  String? coverLetter;
  String? visibility;
  String? talentType;
  String? successScore;
  String? englishLevel;
  List<Languages>? languages;
  List<Qualifications>? qualifications;
  String? levelExperince;
  String? earned;
  String? payType;
  String? expectedTime;
  String? numberPayment;
  String? paymentFrequency;
  String? expectedHourPerWeek;
  List<Image>? image;
  String? createdAt;

  PostJob(
      {this.id,
      this.userId,
      this.username,
      this.title,
      this.description,
      this.budget,
      this.categoryId,
      this.category,
      this.projectTypeId,
      this.projectType,
      this.subCategoryId,
      this.subCategory,
      this.questionId,
      this.question,
      this.coverLetter,
      this.visibility,
      this.talentType,
      this.successScore,
      this.englishLevel,
      this.languages,
      this.qualifications,
      this.levelExperince,
      this.earned,
      this.payType,
      this.expectedTime,
      this.numberPayment,
      this.paymentFrequency,
      this.expectedHourPerWeek,
      this.image,
      this.createdAt});

  PostJob.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    username = json['username'];
    title = json['title'];
    description = json['description'];
    budget = json['budget'];
    categoryId = json['category_id'];
    category = json['category'];
    projectTypeId = json['project_type_id'];
    projectType = json['project_type'];
    subCategoryId = json['sub_category_id'];
    subCategory = json['sub_category'];
    questionId = json['question_id'];
    question = json['question'];
    coverLetter = json['cover_letter'];
    visibility = json['visibility'];
    talentType = json['talent_type'];
    successScore = json['success_score'];
    englishLevel = json['english_level'];
    if (json['languages'] != null) {
      languages = <Languages>[];
      json['languages'].forEach((v) {
        languages!.add(new Languages.fromJson(v));
      });
    }
    if (json['qualifications'] != null) {
      qualifications = <Qualifications>[];
      json['qualifications'].forEach((v) {
        qualifications!.add(new Qualifications.fromJson(v));
      });
    }
    levelExperince = json['level_experince'];
    earned = json['earned'];
    payType = json['pay_type'];
    expectedTime = json['expected_time'];
    numberPayment = json['number_payment'];
    paymentFrequency = json['payment_frequency'];
    expectedHourPerWeek = json['expected_hour_per_week'];
    if (json['image'] != null) {
      image = <Image>[];
      json['image'].forEach((v) {
        image!.add(new Image.fromJson(v));
      });
    }
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['user_id'] = this.userId;
    data['username'] = this.username;
    data['title'] = this.title;
    data['description'] = this.description;
    data['budget'] = this.budget;
    data['category_id'] = categoryId;
    data['category'] = category;
    data['project_type_id'] = projectTypeId;
    data['project_type'] = projectType;
    data['sub_category_id'] = subCategoryId;
    data['sub_category'] = subCategory;
    data['question_id'] = this.questionId;
    data['question'] = this.question;
    data['cover_letter'] = this.coverLetter;
    data['visibility'] = this.visibility;
    data['talent_type'] = this.talentType;
    data['success_score'] = this.successScore;
    data['english_level'] = this.englishLevel;
    if (this.languages != null) {
      data['languages'] = this.languages!.map((v) => v.toJson()).toList();
    }
    if (this.qualifications != null) {
      data['qualifications'] =
          this.qualifications!.map((v) => v.toJson()).toList();
    }
    data['level_experince'] = this.levelExperince;
    data['earned'] = this.earned;
    data['pay_type'] = this.payType;
    data['expected_time'] = this.expectedTime;
    data['number_payment'] = this.numberPayment;
    data['payment_frequency'] = this.paymentFrequency;
    data['expected_hour_per_week'] = this.expectedHourPerWeek;
    if (this.image != null) {
      data['image'] = this.image!.map((v) => v.toJson()).toList();
    }
    data['created_at'] = this.createdAt;
    return data;
  }
}

class Languages {
  int? id;
  String? title;
  String? createdAt;

  Languages({this.id, this.title, this.createdAt});

  Languages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['created_at'] = this.createdAt;
    return data;
  }
}

class Qualifications {
  int? id;
  String? qualification;
  String? createdAt;

  Qualifications({this.id, this.qualification, this.createdAt});

  Qualifications.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    qualification = json['qualification'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['qualification'] = this.qualification;
    data['created_at'] = this.createdAt;
    return data;
  }
}

class Image {
  int? id;
  String? image;
  String? createdAt;

  Image({this.id, this.image, this.createdAt});

  Image.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['created_at'] = this.createdAt;
    return data;
  }
}
