import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/reports/widgets/clearness_is_requested_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/reports/widgets/paid_and_cleared.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/reports/widgets/paid_not_cleared_widget.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/widgets/jobs_defination_row.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';

class ReportsWidget extends StatefulWidget {
  const ReportsWidget({Key? key}) : super(key: key);

  @override
  State<ReportsWidget> createState() => _ReportsWidgetState();
}

class _ReportsWidgetState extends State<ReportsWidget>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             JobDefinitionRow(title: "Reports"),
            16.ph,
            Expanded(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TabBar(
                        isScrollable: true,

                        labelPadding: EdgeInsets.only(
                          left: 16,
                        ),
                        indicator: BoxDecoration(),


                        unselectedLabelColor: Colors.grey,
                        onTap: (index) {
                          print(tabController.index);
                          setState(() {
                            tabController.animateTo(index);
                          });
                        },
                        controller: tabController,
                        tabs: [
                          Tab(
                            child: CustomText(
                              'paid not cleared',
                              fontsize: 12,
                              fontFamily: "Roboto",
                              weight: FontWeight.w600,
                              color: tabController.index == 0
                                  ? AppColors.primaryColor
                                  : AppColors.tabBarColorUnSelected,
                            ),
                          ),
                          Tab(
                            child: CustomText(
                              'clearness is requested',
                              fontsize: 12,
                              fontFamily: "Roboto",
                              weight: FontWeight.w600,
                              color: tabController.index == 1
                                  ? AppColors.primaryColor
                                  : AppColors.tabBarColorUnSelected,
                            ),
                          ),
                          Tab(
                            child: CustomText(
                              'paid & cleared',
                              fontsize: 12,
                              fontFamily: "Roboto",
                              weight: FontWeight.w600,
                              color: tabController.index == 2
                                  ? AppColors.primaryColor
                                  : AppColors.tabBarColorUnSelected,
                            ),
                          ),
                        ]),
                    8.ph,
                    Expanded(
                        child: TabBarView(
                      children: [
                        PaidNotClearedWidget(),
                        ClearnessIsRequestedWidget(),
                        PaidAndClearedWidget(),
                      ],
                          controller: tabController,
                    )),
                  ],
                ),
              ),
            ),
            32.ph,
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ButtonWidget(
                width: 150,
                height: 40,
                borderColor: AppColors.buttonBorderColor,
                withBorder: true,
                buttonColor: Colors.white,
                textColor: AppColors.buttonBorderColor,
                title: "Previous",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ButtonWidget(
                width: 150,
                height: 40,
                onTap: () {
                  Navigator.pushNamed(
                      context, Routes.NotificationsFindJobWidget);
                },
                title: "Next",
                buttonColor: AppColors.buttonColor,
              ),
            ]),
            64.ph,
          ],
        ),
      ),
    );
  }
}
