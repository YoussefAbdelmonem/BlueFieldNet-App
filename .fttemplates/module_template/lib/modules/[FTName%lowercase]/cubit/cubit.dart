import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/data_source/dio.dart';
import '../../../core/utiles/Locator.dart';
import '../domain/model/<FTName | lowercase>_model.dart';
import '../domain/repository/repository.dart';
import 'states.dart';

class <FTName | pascalcase>Cubit extends Cubit<<FTName | pascalcase>States> {
  <FTName | pascalcase>Cubit() : super(<FTName | pascalcase>Initial());
  static <FTName | pascalcase>Cubit get(context) => BlocProvider.of(context);
  
  <FTName | pascalcase>Repository <FTName | lowercase>Repository =  <FTName | pascalcase>Repository(locator<DioService>());
}
