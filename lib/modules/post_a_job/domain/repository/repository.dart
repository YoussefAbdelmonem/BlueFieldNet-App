import 'package:bluefieldnet/core/helpers/alerts.dart';
import 'package:bluefieldnet/modules/post_a_job/domain/request/post_a_job_request.dart';
import 'package:bluefieldnet/shared/widgets/myLoading.dart';

import 'endpoints.dart';

import '../model/post_a_job_model.dart';
import '../../../../core/data_source/dio.dart';

class PostAJobRepository {
  final DioService dioService;
  PostAJobRepository(this.dioService);
  getPostAJobRequest() async {
    final response = await dioService.getData(url: PostAJobEndPoints.postAJob);

    if (response.isError == false) {
      return PostJobData.fromJson(response.response?.data['data']);
    } else {
      return null;
    }
  }

  postAJobRequest(
    PostAJobRequest postAJob,
  ) async {
    final response = await dioService.postData(
        url: PostAJobEndPoints.postANewJob,
        loading: true,
        body: await postAJob.toMap(),
        isForm: true);
    if (response.isError == false) {
      Alerts.snack(
          text: response.response?.data['message'], state: SnackState.success);
      return true;
      // PostJobData.fromJson(response.response?.data['data']);
    } else {
      return null;
    }
  }
}
