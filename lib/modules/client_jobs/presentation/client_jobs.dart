import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/client_jobs/presentation/widgets/my_jobs/my_jobs_widget.dart';
import 'package:bluefieldnet/modules/client_jobs/presentation/widgets/reports/reports_widget.dart';
import 'package:bluefieldnet/modules/client_jobs/presentation/widgets/search_for_team_leader/search_for_team_leader_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/widgets/jobs_defination_row.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../cubit/cubit.dart';
///// put it in routes
///  import '../../modules/client_jobs/presentation/client_jobs.dart';
/// static const String client_jobsScreen = "/clientJobsScreen";

class ClientJobsScreen extends StatefulWidget {
  const ClientJobsScreen({Key? key}) : super(key: key);

  @override
  State<ClientJobsScreen> createState() => _ClientJobsScreenState();
}

class _ClientJobsScreenState extends State<ClientJobsScreen>
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
        create: (context) => ClientJobsCubit(),
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                // 16.ph,
                // const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                //   CircleAvatar(
                //       backgroundImage: NetworkImage(
                //           "https://media.cnn.com/api/v1/images/stellar/prod/230621042149-01-cristiano-ronaldo-euro-200-apps-062023-restricted.jpg?c=16x9&q=h_720,w_1280,c_fill")),
                //   Spacer(),
                //   CustomText(
                //     "Jobs",
                //     color: AppColors.font,
                //     fontFamily: "Sans",
                //     fontsize: 16,
                //     weight: FontWeight.w600,
                //   ),
                //   Spacer(),
                // ]),
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
                      border:
                          Border.all(color: AppColors.tabBarColor, width: 1.5),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    controller: controller,
                    tabs: [
                      Tab(
                        child: CustomText(
                          'My Jobs',
                          fontsize: 14,
                          fontFamily: "Sans",
                          weight: FontWeight.w400,
                          color: controller.index == 0
                              ? AppColors.whiteBackground
                              : AppColors.tabBarColorUnSelected,
                        ),
                      ),
                      Tab(
                        child: CustomText(
                          'Search For Team Leaders',
                          fontsize: 10,
                          fontFamily: "Sans",
                          weight: FontWeight.w400,
                          color: controller.index == 1
                              ? AppColors.whiteBackground
                              : AppColors.tabBarColorUnSelected,
                        ),
                      ),
                      Tab(
                        child: CustomText(
                          'Reports',
                          fontsize: 14,
                          fontFamily: "Sans",
                          weight: FontWeight.w400,
                          color: controller.index == 2
                              ? AppColors.whiteBackground
                              : AppColors.tabBarColorUnSelected,
                        ),
                      ),
                    ]),
                16.ph,
                Expanded(
                  child: TabBarView(
                    controller: controller,
                    children: [
                      MyJobsWidgets(),
                      SearchForTeamLeaderWidget(),
                      ClientReportsWidget(),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ));
  }
}
