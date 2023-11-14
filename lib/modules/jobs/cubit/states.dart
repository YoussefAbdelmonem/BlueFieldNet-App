abstract class JobsStates {}

class JobsInitial extends JobsStates {}
class GetFindJobsDataLoadingState extends JobsStates {}
class GetFindJobsDataSuccessState extends JobsStates {}
class GetFindJobsDataErrorState extends JobsStates {}
