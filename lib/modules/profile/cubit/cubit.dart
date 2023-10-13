import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/Router/Router.dart';
import '../../../core/data_source/dio.dart';
import '../../../core/utiles/Locator.dart';
import '../../../core/utiles/utiles.dart';
import '../domain/model/splash_model.dart';
import '../domain/repository/repository.dart';
import 'states.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  ProfileCubit() : super(SplashInitial());
  static ProfileCubit get(context) => BlocProvider.of(context);


}
