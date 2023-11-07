import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/core/utiles/utiles.dart';
import 'package:bluefieldnet/modules/client_jobs/presentation/client_jobs.dart';
import 'package:bluefieldnet/modules/layout/cubit/layout_cubit.dart';
import 'package:bluefieldnet/modules/layout/widgets/bottom_naviagation_bar.dart';
import 'package:bluefieldnet/modules/messages/presentation/messages_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/Router/Router.dart';
import '../../../../core/theme/dynamic_theme/colors.dart';
import '../../../../shared/widgets/customtext.dart';
import '../../../jobs/presentation/jobs.dart';
import '../../../notifications/presentation/notifications.dart';
import '../../../post_a_job/presentation/post_a_job.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit()..initTabBar(this),
      child: BlocConsumer<LayoutCubit, LayoutState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LayoutCubit cubit = BlocProvider.of(context);
          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leadingWidth: 100,
                leading: Row(
                  children: [
                    20.pw,
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.profile);
                      },
                      child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://media.cnn.com/api/v1/images/stellar/prod/230621042149-01-cristiano-ronaldo-euro-200-apps-062023-restricted.jpg?c=16x9&q=h_720,w_1280,c_fill")),
                    ),
                  ],
                ),
                centerTitle: true,
                title: CustomText(
                  cubit.title,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  fontsize: 16,
                  weight: FontWeight.w600,
                ),
              ),
              extendBody: true,
              body: TabBarView(
                  controller: cubit.tabController,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    PostAJobScreen(),
                    NotificationsScreen(),
                    Utils.userModel.type == "freelancer"
                        ? JobsScreen()
                        : ClientJobsScreen(),
                    MessagesScreen()
                  ]),
              bottomNavigationBar: CustomBottomNavBar(cubit: cubit));
        },
      ),
    );
  }
}
