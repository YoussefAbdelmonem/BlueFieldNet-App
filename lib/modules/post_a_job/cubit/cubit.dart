import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/data_source/dio.dart';
import '../../../core/utiles/Locator.dart';
import '../domain/model/post_a_job_model.dart';
import '../domain/repository/repository.dart';
import 'states.dart';

class PostAJobCubit extends Cubit<PostAJobStates> {
  PostAJobCubit() : super(PostAJobInitial());
  static PostAJobCubit get(context) => BlocProvider.of(context);

  PostAJobRepository post_a_jobRepository =
      PostAJobRepository(locator<DioService>());
}
