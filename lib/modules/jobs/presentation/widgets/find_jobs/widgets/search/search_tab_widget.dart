import 'package:bluefieldnet/modules/jobs/cubit/cubit.dart';
import 'package:bluefieldnet/modules/jobs/cubit/states.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/find_jobs/cubit/find_jobs_cubit.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/find_jobs/widgets/search/widgets/item_card.dart';
import 'package:bluefieldnet/shared/widgets/loadinganderror.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchFindJobTabWidget extends StatefulWidget {
  const SearchFindJobTabWidget({Key? key}) : super(key: key);

  @override
  State<SearchFindJobTabWidget> createState() => _SearchFindJobTabWidgetState();
}

class _SearchFindJobTabWidgetState extends State<SearchFindJobTabWidget>
with AutomaticKeepAliveClientMixin{
 late JobsCubit cubit ;
  @override
  void initState() {
    cubit = BlocProvider.of(context);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp)async {
      await cubit.getFindJobsData();
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JobsCubit, JobsStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {

        return LoadingAndError(
          isError:state is GetFindJobsDataErrorState,
          isLoading: state is GetFindJobsDataLoadingState,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return SearchItemCardWidget(
                findJobsData: cubit.findJobsData?.data?[index],

              );
            },
            itemCount: cubit.findJobsData?.data?.length,
            // shrinkWrap: true,
          ),
        );
      },
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
