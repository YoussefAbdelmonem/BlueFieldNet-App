import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/data_source/dio.dart';
import '../../../core/utiles/Locator.dart';
import '../../../core/utiles/utiles.dart';
import '../domain/model/auth_model.dart';
import '../domain/repository/repository.dart';
import '../domain/request/auth_request.dart';
import 'states.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitial());
  static AuthCubit get(context) => BlocProvider.of(context);

  AuthRepository authRepository = AuthRepository(locator<DioService>());
  register({required AuthRequest registerRequestModel}) async {
    emit(RegisterLoading());
    final response = await authRepository.registerRequest(registerRequestModel);

    if (response != null) {
      emit(RegisterSucces());

      return true;
    } else {
      emit(RegisterError());
      return null;
    }
  }

  login({required AuthRequest registerRequestModel}) async {
    emit(RegisterLoading());
    final response = await authRepository.loginRequest(registerRequestModel);

    if (response != null) {
      await Utils.saveUserInHive(response);
      emit(RegisterSucces());
      return true;
    } else {
      emit(RegisterError());
      return null;
    }
  }
}
