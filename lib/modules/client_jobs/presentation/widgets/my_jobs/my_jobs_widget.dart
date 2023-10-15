import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/client_jobs/presentation/widgets/my_jobs/widgets/completed/my_jobs_completed_widget.dart';
import 'package:bluefieldnet/modules/client_jobs/presentation/widgets/my_jobs/widgets/drafts/my_jobs_draft_widget.dart';
import 'package:bluefieldnet/modules/client_jobs/presentation/widgets/my_jobs/widgets/ongoing/my_jobs_onging_widget.dart';
import 'package:bluefieldnet/modules/client_jobs/presentation/widgets/my_jobs/widgets/open/my_jobs_open_widget.dart';
import 'package:bluefieldnet/modules/client_jobs/presentation/widgets/my_jobs/widgets/pending/my_jobs_pending_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';

class MyJobsWidgets extends StatefulWidget {
  const MyJobsWidgets({Key? key}) : super(key: key);

  @override
  State<MyJobsWidgets> createState() => _MyJobsWidgetsState();
}

class _MyJobsWidgetsState extends State<MyJobsWidgets>with SingleTickerProviderStateMixin {
late TabController controller;
@override
void initState() {
  // TODO: implement initState
  super.initState();
  controller = TabController(length: 5, vsync: this);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body:Column(
     children: [
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
                 'open',
                 fontsize: 14,

                 weight: FontWeight.w600,
                 color: controller.index == 0? AppColors.primaryColor : AppColors.tabBarColorUnSelected,
               ),
             ),
             Tab(
               child: CustomText(
                 'ongoing',
                 fontsize: 14,

                 weight: FontWeight.w600,
                 color: controller.index == 1? AppColors.primaryColor : AppColors.tabBarColorUnSelected,
               ),
             ),
             Tab(
               child: CustomText(
                 'pending',
                 fontsize: 14,

                 weight: FontWeight.w600,
                 color: controller.index == 2? AppColors.primaryColor : AppColors.tabBarColorUnSelected,
               ),
             ),
             Tab(
               child: CustomText(
                 'completed',
                 fontsize: 14,

                 weight: FontWeight.w600,
                 color: controller.index == 3? AppColors.primaryColor : AppColors.tabBarColorUnSelected,
               ),
             ),
             Tab(
               child: CustomText(
                 'drafts',
                 fontsize: 14,

                 weight: FontWeight.w600,
                 color: controller.index == 4? AppColors.primaryColor : AppColors.tabBarColorUnSelected,
               ),
             ),
           ]),
       16.ph,
       Expanded(
         child: TabBarView(
           controller: controller,
           children: const [
             MyJobsOpenWidget(),
             MyJobsOngoingWidget(),
             MyJobsPendingWidget(),
             MyJobsCompletedWidget(),
             MyJobsDraftWidget(),
           ],
         ),
       )


     ],
    )

    );
  }
}
