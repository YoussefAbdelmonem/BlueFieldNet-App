import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/widgets/jobs_defination_row.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';

class StripDashBoardWidget extends StatelessWidget {
  const StripDashBoardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              JobDefinitionRow(
                title: "Profile DashBoard",
                image: "assets/icons/dashboard.svg",
              ),
              16.ph,
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          "Stripe",
                          fontsize: 16,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                        CustomText(
                          "11/11",
                          fontsize: 16,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                      ],
                    ),
                    16.ph,
                    const CustomText(
                      "You are almost done",
                      fontsize: 12,
                      color: AppColors.font,
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),
                    8.ph,
                    const CustomText(
                      "In order to be able to receive payments you will need a stripe account.",
                      fontsize: 10,
                      color: AppColors.font,
                      fontFamily: "Sans",
                      weight: FontWeight.w400,
                    ),
                    16.ph,
                    ButtonWidget(
                      width: 150,
                      height: 40,
                      onTap: () {

                      },
                      title: "connect stripe",
                      buttonColor: AppColors.primaryColor,
                    ),
                    16.ph,
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
                              context, Routes.PhoneDashBoardWidget);
                        },
                        title: "Next",
                        buttonColor: AppColors.buttonColor,
                      ),
                    ])
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
