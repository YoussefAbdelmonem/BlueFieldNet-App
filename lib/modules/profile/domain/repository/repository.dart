import 'endpoints.dart';

import '../model/profile_model.dart';
import '../../../../core/data_source/dio.dart';

  //put it in locators locator.registerLazySingleton(() => ProfileRepository(locator<DioService>()));
//  import '../../modules/profile/domain/repository/repository.dart';
class ProfileRepository{
final  DioService dioService ;
  ProfileRepository(this.dioService);
}
