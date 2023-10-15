import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/data_source/dio.dart';
import '../../../core/utiles/Locator.dart';
import '../domain/model/client_jobs_model.dart';
import '../domain/repository/repository.dart';
import 'states.dart';

class ClientJobsCubit extends Cubit<ClientJobsStates> {
  ClientJobsCubit() : super(ClientJobsInitial());
  static ClientJobsCubit get(context) => BlocProvider.of(context);
  
  ClientJobsRepository client_jobsRepository =  ClientJobsRepository(locator<DioService>());
}
