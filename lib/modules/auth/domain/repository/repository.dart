import '../request/auth_request.dart';
import 'endpoints.dart';

import '../model/auth_model.dart';
import '../../../../core/data_source/dio.dart';

//put it in locators locator.registerLazySingleton(() => AuthRepository(locator<DioService>()));

class AuthRepository {
  final DioService dioService;
  AuthRepository(this.dioService);

  loginRequest(AuthRequest user) async {
    final response = await dioService.postData(
        url: AuthEndPoints.login, body: user.login(), loading: true);
    if (response.isError == false) {
      return UserModel.fromJson(response.response?.data['data']);
    } else {
      return null;
    }
  }

  registerRequest(AuthRequest user) async {
    final response = await dioService.postData(
        url: AuthEndPoints.register, body: user.register(), loading: true);
    if (response.isError == false) {
      return UserModel.fromJson(response.response?.data['data']);
    } else {
      return null;
    }
  }
}
