import 'endpoints.dart';

import '../model/auth_model.dart';
import '../../../../core/data_source/dio.dart';

//put it in locators locator.registerLazySingleton(() => AuthRepository(locator<DioService>()));

class AuthRepository {
  final DioService dioService;
  AuthRepository(this.dioService);
}
