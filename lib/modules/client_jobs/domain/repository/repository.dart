import 'endpoints.dart';

import '../model/client_jobs_model.dart';
import '../../../../core/data_source/dio.dart';

  //put it in locators locator.registerLazySingleton(() => ClientJobsRepository(locator<DioService>()));
//  import '../../modules/client_jobs/domain/repository/repository.dart';
class ClientJobsRepository{
final  DioService dioService ;
  ClientJobsRepository(this.dioService);
}
