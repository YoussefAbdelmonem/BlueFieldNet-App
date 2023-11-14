import 'package:bluefieldnet/modules/jobs/cubit/cubit.dart';
import 'package:bluefieldnet/modules/jobs/cubit/states.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/find_jobs/cubit/find_jobs_cubit.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/find_jobs/widgets/search/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchFindJobTabWidget extends StatelessWidget {
  const SearchFindJobTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JobsCubit, JobsStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        JobsCubit cubit = BlocProvider.of(context);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              itemBuilder: (context, index) {
                return SearchItemCardWidget(
                  findJobsData: cubit.findJobsData?.data?[index],

                );
              },
              itemCount: cubit.findJobsData?.data?.length,
              shrinkWrap: true,
            )
          ],
        );
      },
    );
  }
}
