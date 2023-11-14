part of 'find_jobs_cubit.dart';

@immutable
abstract class FindJobsState {}

class FindJobsInitial extends FindJobsState {}
class GetFindJobsDataLoadingState extends FindJobsState {}
class GetFindJobsDataSuccessState extends FindJobsState {}
class GetFindJobsDataErrorState extends FindJobsState {}
