import 'package:bloc/bloc.dart';
import 'package:bluefieldnet/core/data_source/dio.dart';
import 'package:bluefieldnet/core/utiles/Locator.dart';
import 'package:bluefieldnet/modules/jobs/domain/model/find_jobs_model.dart';
import 'package:bluefieldnet/modules/jobs/domain/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'find_jobs_state.dart';

class FindJobsCubit extends Cubit<FindJobsState> {
  FindJobsCubit() : super(FindJobsInitial());
  // static FindJobsCubit get(context) => BlocProvider.of(context);
  // JobsRepository jobsRepository = JobsRepository(locator<DioService>());


}
