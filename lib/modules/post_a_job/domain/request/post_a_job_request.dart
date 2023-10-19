// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:bluefieldnet/modules/post_a_job/domain/model/post_a_job_model.dart';
import 'package:dio/dio.dart';

class PostAJobRequest {
  String? title;
  String? category_id;
  String? sub_category_id;
  String? description;
  String? project_type_id;
  String? screening_question_id;
  String? cover_letter;
  String? visibility;
  String? payment_frequency;
  String? number_payment;
  String? budget;
  String? expected_hour_per_week;
  String? expected_time;
  String? level_experince;
  String? pay_type;
  String? earned;
  String? english_level;
  String? success_score;
  String? talent_type;
  List<String>? skill_id;
  List<Skills>? skills;
  List<String>? qualifications;
  List<String>? languages;
  List<File>? images = [];
  PostAJobRequest({
    this.title,
    this.category_id,
    this.sub_category_id,
    this.description,
    this.project_type_id,
    this.screening_question_id,
    this.skills,
    this.cover_letter,
    this.visibility,
    this.payment_frequency,
    this.number_payment,
    this.budget,
    this.expected_hour_per_week,
    this.expected_time,
    this.level_experince,
    this.pay_type,
    this.earned,
    this.english_level,
    this.success_score,
    this.talent_type,
    this.skill_id,
    this.qualifications,
    this.languages,
    this.images,
  });

  Future<Map<String, dynamic>> toMap() async {
    return <String, dynamic>{
      'title': title,
      'category_id': category_id,
      'sub_category_id': sub_category_id,
      'description': description,
      'project_type_id': project_type_id,
      'screening_question_id': screening_question_id,
      'cover_letter': cover_letter,
      'visibility': visibility,
      'payment_frequency': payment_frequency,
      'number_payment': number_payment,
      'budget': budget,
      'expected_hour_per_week': expected_hour_per_week,
      'expected_time': expected_time,
      'level_experince': level_experince,
      'pay_type': pay_type,
      'earned': earned,
      'english_level': english_level,
      'success_score': success_score,
      'talent_type': talent_type,
      'skill_id[]':
          skill_id /* skills?.isNotEmpty == true
          ? skills?.map((x) => x.id.toString()).toList()
          : null */
      ,
      'qualifications[]': qualifications,
      'languages[]': languages,
      'images[]': [
        for (int i = 0; i < (images ?? []).length; i++)
          await MultipartFile.fromFile((images ?? [])[i].path),
      ],
    };
  }

  // factory PostAJobRequest.fromMap(Map<String, dynamic> map) {
  //   return PostAJobRequest(
  //     title: map['title'],
  //     category_id: map['category_id'],
  //     sub_category_id: map['sub_category_id'],
  //     description: map['description'],
  //     project_type_id: map['project_type_id'],
  //     screening_question_id: map['screening_question_id'],
  //     cover_letter: map['cover_letter'],
  //     visibility: map['visibility'],
  //     payment_frequency: map['payment_frequency'],
  //     number_payment: map['number_payment'],
  //     budget: map['budget'],
  //     expected_hour_per_week: map['expected_hour_per_week'],
  //     expected_time: map['expected_time'],
  //     level_experince: map['level_experince'],
  //     pay_type: map['pay_type'],
  //     earned: map['earned'],
  //     english_level: map['english_level'],
  //     success_score: map['success_score'],
  //     talent_type: map['talent_type'],
  //     skill_id: List<String>.from(map['skill_id']),
  //     qualifications: List<String>.from(map['qualifications']),
  //     languages: List<String>.from(map['languages']),
  //     // images: List<MultipartFile>.from(
  //     //     map['images']?.map((x) => MultipartFile.fromMap(x))),
  //   );
  // }
}
