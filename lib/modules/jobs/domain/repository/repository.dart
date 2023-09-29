import 'endpoints.dart';

import '../model/jobs_model.dart';
import '../../../../core/data_source/dio.dart';

class JobsRepository {
  final DioService dioService;
  JobsRepository(this.dioService);
}
