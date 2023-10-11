// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class PostJobDataModel {
  PostJobData? data;

  PostJobDataModel({this.data});

  PostJobDataModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new PostJobData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class PostJobData {
  List<JobSetting>? jobSetting;
  List<Skills>? skills;
  List<Categories>? categories;
  List<ProjectTypes>? projectTypes;
  List<Questions>? questions;
  List<Languages>? languages;

  PostJobData(
      {this.jobSetting,
      this.skills,
      this.categories,
      this.projectTypes,
      this.questions,
      this.languages});

  PostJobData.fromJson(Map<String, dynamic> json) {
    if (json['job_setting'] != null) {
      jobSetting = <JobSetting>[];
      json['job_setting'].forEach((v) {
        jobSetting!.add(new JobSetting.fromJson(v));
      });
    }
    if (json['skills'] != null) {
      skills = <Skills>[];
      json['skills'].forEach((v) {
        skills!.add(new Skills.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
    if (json['project_types'] != null) {
      projectTypes = <ProjectTypes>[];
      json['project_types'].forEach((v) {
        projectTypes!.add(new ProjectTypes.fromJson(v));
      });
    }
    if (json['questions'] != null) {
      questions = <Questions>[];
      json['questions'].forEach((v) {
        questions!.add(new Questions.fromJson(v));
      });
    }
    if (json['languages'] != null) {
      languages = <Languages>[];
      json['languages'].forEach((v) {
        languages!.add(new Languages.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.jobSetting != null) {
      data['job_setting'] = this.jobSetting!.map((v) => v.toJson()).toList();
    }
    if (this.skills != null) {
      data['skills'] = this.skills!.map((v) => v.toJson()).toList();
    }
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    if (this.projectTypes != null) {
      data['project_types'] =
          this.projectTypes!.map((v) => v.toJson()).toList();
    }
    if (this.questions != null) {
      data['questions'] = this.questions!.map((v) => v.toJson()).toList();
    }
    if (this.languages != null) {
      data['languages'] = this.languages!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class JobSetting {
  String? jobName;
  String? jobCategory;
  String? jobDescription;
  String? jobCoverLetter;
  String? jobExpertise;
  String? jobVisibility;
  String? jobTalentPrefrence;
  String? jobTypes;

  JobSetting(
      {this.jobName,
      this.jobCategory,
      this.jobDescription,
      this.jobCoverLetter,
      this.jobExpertise,
      this.jobVisibility,
      this.jobTalentPrefrence,
      this.jobTypes});

  JobSetting.fromJson(Map<String, dynamic> json) {
    jobName = json['job_name'];
    jobCategory = json['job_category'];
    jobDescription = json['job_description'];
    jobCoverLetter = json['job_cover_letter'];
    jobExpertise = json['job_expertise'];
    jobVisibility = json['job_visibility'];
    jobTalentPrefrence = json['job_talent_prefrence'];
    jobTypes = json['job_types'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['job_name'] = this.jobName;
    data['job_category'] = this.jobCategory;
    data['job_description'] = this.jobDescription;
    data['job_cover_letter'] = this.jobCoverLetter;
    data['job_expertise'] = this.jobExpertise;
    data['job_visibility'] = this.jobVisibility;
    data['job_talent_prefrence'] = this.jobTalentPrefrence;
    data['job_types'] = this.jobTypes;
    return data;
  }
}

class Skills {
  int? id;
  String? title;
  String? createdAt;

  Skills({this.id, this.title, this.createdAt});

  Skills.fromJson(Map<String, dynamic> json) {
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

  @override
  bool operator ==(covariant Skills other) {
    if (identical(this, other)) return true;

    return other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}

class Categories {
  int? id;
  String? title;
  int? hasChild;
  List<Child>? child;

  Categories({this.id, this.title, this.hasChild, this.child});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    hasChild = json['has_child'];
    if (json['child'] != null) {
      child = <Child>[];
      json['child'].forEach((v) {
        child!.add(new Child.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['has_child'] = this.hasChild;
    if (this.child != null) {
      data['child'] = this.child!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Child {
  int? id;
  String? title;
  int? hasChild;
  List<Null>? child;

  Child({this.id, this.title, this.hasChild, this.child});

  Child.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    hasChild = json['has_child'];
    if (json['child'] != null) {
      child = <Null>[];
      // json['child'].forEach((v) {
      //   child!.add(new Null.fromJson(v));
      // });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['has_child'] = this.hasChild;
    // if (this.child != null) {
    //   data['child'] = this.child!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class ProjectTypes {
  int? id;
  String? title;
  String? description;
  String? image;
  String? createdAt;

  ProjectTypes(
      {this.id, this.title, this.description, this.image, this.createdAt});

  ProjectTypes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['image'] = this.image;
    data['created_at'] = this.createdAt;
    return data;
  }
}

class Questions {
  int? id;
  String? question;
  String? createdAt;

  Questions({this.id, this.question, this.createdAt});

  Questions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['question'] = this.question;
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
