import 'package:bluefieldnet/modules/jobs/domain/model/find_jobs_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/data_source/dio.dart';
import '../../../core/utiles/Locator.dart';
import '../domain/model/jobs_model.dart';
import '../domain/repository/repository.dart';
import 'states.dart';

class JobsCubit extends Cubit<JobsStates> {
  JobsCubit() : super(JobsInitial());
  static JobsCubit get(context) => BlocProvider.of(context);

  JobsRepository jobsRepository = JobsRepository(locator<DioService>());
  FindJobsModel? findJobsData;
  getFindJobsData ()async {
    emit(GetFindJobsDataLoadingState());
    final response =await  jobsRepository.getFindJobsData();
    if(response != null) {
      emit(GetFindJobsDataSuccessState());
      findJobsData = response;
      return true ;
    }
    else {
      emit(GetFindJobsDataErrorState());
      return false ;
    }
  }
}
