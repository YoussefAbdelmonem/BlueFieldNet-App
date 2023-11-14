import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/jobs/cubit/cubit.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/find_jobs/cubit/find_jobs_cubit.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/find_jobs/widgets/apply_for_jobs/apply_for_job_tab_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/find_jobs/widgets/saved/saved_find_job_tab_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/find_jobs/widgets/search/search_tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../shared/widgets/customtext.dart';

class FindJobsTab extends StatefulWidget {
  const FindJobsTab({Key? key}) : super(key: key);

  @override
  State<FindJobsTab> createState() => _FindJobsTabState();
}

class _FindJobsTabState extends State<FindJobsTab>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        slivers: [
          TabBar(
              isScrollable: true,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFF5F5F5),
              ),
              labelPadding: EdgeInsets.symmetric(
                horizontal: 16,
              ),

              // indicatorWeight: 0.0,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.only(
                bottom: 6,
                top: 6,
                left: 1,
                right: 1,
              ),
              unselectedLabelColor: Colors.grey,
              onTap: (index) {
                print(controller.index);
                setState(() {
                  controller.animateTo(index);
                });
              },
              controller: controller,
              tabs: [
                Tab(
                  child: CustomText(
                    'Search',
                    fontsize: 12,
                    fontFamily: "Sans",
                    weight: FontWeight.w600,
                    color: controller.index == 0
                        ? AppColors.primaryColor
                        : AppColors.tabBarColorUnSelected,
                  ),
                ),
                Tab(
                  child: CustomText(
                    'Applied For Jobs ',
                    fontsize: 12,
                    fontFamily: "Sans",
                    weight: FontWeight.w600,
                    color: controller.index == 1
                        ? AppColors.primaryColor
                        : AppColors.tabBarColorUnSelected,
                  ),
                ),
                Tab(
                  child: CustomText(
                    'saved',
                    fontsize: 12,
                    fontFamily: "Sans",
                    weight: FontWeight.w600,
                    color: controller.index == 2
                        ? AppColors.primaryColor
                        : AppColors.tabBarColorUnSelected,
                  ),
                ),
              ]).SliverBox,
          BlocProvider(
            create: (context) => JobsCubit()..getFindJobsData(),
            child: SizedBox(
              height: 500,
              child: TabBarView(
                controller: controller,
                children: const [
                  SearchFindJobTabWidget(),
                  ApplyForJobsFindJobTabWidget(),
                  SavedFindJobTabWidget(),
                ],
              ),
            ),
          ).SliverBox,
        ],
      ),
    );
  }
}
