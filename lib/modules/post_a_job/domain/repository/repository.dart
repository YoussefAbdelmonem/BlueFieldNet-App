import 'endpoints.dart';

import '../model/post_a_job_model.dart';
import '../../../../core/data_source/dio.dart';

class PostAJobRepository {
  final DioService dioService;
  PostAJobRepository(this.dioService);
}
