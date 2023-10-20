import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/data_source/dio.dart';
import '../../../core/utiles/Locator.dart';
import '../domain/model/check_box_models.dart';
import '../domain/model/post_a_job_model.dart';
import '../domain/repository/repository.dart';
import '../domain/request/post_a_job_request.dart';
import 'states.dart';

class PostAJobCubit extends Cubit<PostAJobStates> {
  PostAJobCubit() : super(PostAJobInitial());
  static PostAJobCubit get(context) => BlocProvider.of(context);

  PostAJobRepository post_a_jobRepository =
      PostAJobRepository(locator<DioService>());
  PostJobData? postJobData;

  PostAJobRequest postAJobRequest = PostAJobRequest();

  getPostAJob() async {
    emit(PostAJobLoading());
    final response = await post_a_jobRepository.getPostAJobRequest();

    if (response != null) {
      postJobData = response;
      emit(PostAJobSucces());
      return true;
    } else {
      emit(PostAJobError());
      return null;
    }
  }

  postAnewJob() async {
    final response =
        await post_a_jobRepository.postAJobRequest(postAJobRequest);

    if (response != null) {
      postAJobRequest = PostAJobRequest();
      return true;
    } else {
      return null;
    }
  }

  List<PriceModel> expected_time = [
    PriceModel(name: "More than 6 months", id: "more_than_6_months"),
    PriceModel(name: "3 to 6 months", id: "form_3_to_6_months"),
    PriceModel(name: "1 to 3 months", id: "form_1_to_3_months"),
    PriceModel(name: "Less than 1 month", id: "less_than_1_month"),
  ];
}
