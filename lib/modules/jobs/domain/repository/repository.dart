import 'package:bluefieldnet/modules/jobs/domain/model/find_jobs_model.dart';

import 'endpoints.dart';

import '../model/jobs_model.dart';
import '../../../../core/data_source/dio.dart';

class JobsRepository {
  final DioService dioService;
  JobsRepository(this.dioService);

   getFindJobsData ()async {
     final response = await dioService.getData(url: JobsEndPoints.jobs);
     if(response.isError == false) {
       return FindJobsModel.fromJson(response.response?.data);
     }
     else {
       return null;
     }
   }
}
