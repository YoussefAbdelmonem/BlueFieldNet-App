import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/core/utiles/utiles.dart';
import 'package:bluefieldnet/modules/jobs/cubit/states.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/current_jobs_Tab.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/find_jobs/find_jobs_tab.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/saved_jobs/saved_jobs_tab.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../shared/widgets/customtext.dart';
import '../cubit/cubit.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: (3), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
        JobsCubit()
          ..getFindJobsData(),
        child: BlocConsumer<JobsCubit, JobsStates>(
          listener: (context, state) {
            // TODO: implement listener
            if (state is GetFindJobsDataLoadingState) {
              Center(
                child: CircularProgressIndicator(),
              );

            }
          },
          builder: (context, state) {

            return Scaffold(
              backgroundColor: Color(0xFFF5F5F5),
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [

                      16.ph,
                      TextFormFieldWidget(
                        prefixIcon: SvgPicture.asset(
                          "assets/icons/search.svg",
                          alignment: Alignment.center,
                          fit: BoxFit.none,
                        ),
                        hintText: "Search for job",
                        suffixWidget: const VerticalDivider(
                          color: Colors.black,
                          width: 3,
                          thickness: 10,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.Filter);
                          },
                          icon: SvgPicture.asset("assets/icons/Filter.svg"),
                        ),
                      ),
                      16.ph,
                      TabBar(
                          padding: EdgeInsets.zero,
                          labelPadding: EdgeInsets.zero,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicatorPadding: EdgeInsets.only(
                            bottom: 6,
                            top: 6,
                            left: 1,
                            right: 1,
                          ),
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.red,
                          onTap: (index) {
                            setState(() {
                              controller.animateTo(index);
                            });
                          },
                          indicator: BoxDecoration(
                            color: AppColors.tabBarColor,
                            border: Border.all(
                                color: AppColors.tabBarColor, width: 1.5),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          controller: controller,
                          tabs: [
                            Tab(
                              child: CustomText(
                                'Find Jobs',
                                fontsize: 12,
                                fontFamily: "Sans",
                                color: controller.index == 0
                                    ? AppColors.whiteBackground
                                    : AppColors.tabBarColorUnSelected,
                              ),
                            ),
                            Tab(
                              child: CustomText(
                                'Current Jobs',
                                fontsize: 12,
                                fontFamily: "Sans",
                                color: controller.index == 1
                                    ? AppColors.whiteBackground
                                    : AppColors.tabBarColorUnSelected,
                              ),
                            ),
                            Tab(
                              child: CustomText(
                                'Saved Jobs',
                                fontsize: 12,
                                fontFamily: "Sans",
                                color: controller.index == 2
                                    ? AppColors.whiteBackground
                                    : AppColors.tabBarColorUnSelected,
                              ),
                            ),
                          ]),
                      Expanded(
                          child: TabBarView(
                            controller: controller,
                            children: const [
                              FindJobsTab(),
                              CurrentJobsTab(),
                              SavedJobsTab(),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
