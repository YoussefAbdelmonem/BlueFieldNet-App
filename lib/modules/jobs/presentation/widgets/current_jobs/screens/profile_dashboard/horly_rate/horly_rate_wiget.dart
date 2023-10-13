import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/profile_dashboard/language/widgets/add_language_button.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/widgets/jobs_defination_row.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HourlyRateDashboardWidget extends StatelessWidget {
  const HourlyRateDashboardWidget({Key? key}) : super(key: key);

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
                padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          "Hourly Rate",
                          fontsize: 16,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                        CustomText(
                          "6/11",
                          fontsize: 16,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                      ],
                    ),
                    8.ph,
                    const CustomText(
                      'You can adjust your rate every time you submit a proposal.',
                      fontsize: 12,
                      color: Colors.black,
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),
                    16.ph,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomText(
                          "Hourly Rate",
                          fontsize: 16,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                        Row(
                          children: [
                            Container(

                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black
                                ),
                                borderRadius: BorderRadius.circular(4),

                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 4),
                              margin: const EdgeInsets.only(right: 8),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    "\$",
                                    fontsize: 14,
                                    color: AppColors.primaryColor,
                                    fontFamily: "Sans",
                                    weight: FontWeight.w500,
                                  ),
                                  // Spacer(),
                                  CustomText(
                                    "1",
                                    fontsize: 14,
                                    color: AppColors.primaryColor,
                                    fontFamily: "Sans",
                                    weight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                            4.pw,
                            const CustomText(
                              "/hr",
                              fontsize: 16,
                              color: Colors.black,
                              fontFamily: "Sans",
                              weight: FontWeight.w500,
                            ),
                          ],
                        )
                      ],
                    ),
                    8.ph,
                    const CustomText(
                      'Total amount the client will see ',
                      fontsize: 16,
                      color: Colors.black,
                      fontFamily: "Sans",
                      weight: FontWeight.w400,
                    ),
                    16.ph,
                    ////////////Secind/////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomText(
                          "Uplance services fee  ",
                          fontsize: 16,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                        Row(
                          children: [
                            Container(

                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black
                                ),
                                borderRadius: BorderRadius.circular(4),

                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 4),
                              margin: const EdgeInsets.only(right: 8),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    "\$",
                                    fontsize: 14,
                                    color: AppColors.primaryColor,
                                    fontFamily: "Sans",
                                    weight: FontWeight.w500,
                                  ),
                                  // Spacer(),
                                  CustomText(
                                    "0.10",
                                    fontsize: 14,
                                    color: AppColors.primaryColor,
                                    fontFamily: "Sans",
                                    weight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                            4.pw,
                            const CustomText(
                              "/hr",
                              fontsize: 16,
                              color: Colors.black,
                              fontFamily: "Sans",
                              weight: FontWeight.w500,
                            ),
                          ],
                        )
                      ],
                    ),
                    8.ph,
                    const CustomText(
                      'our services fee is 10%',
                      fontsize: 16,
                      color: Colors.black,
                      fontFamily: "Sans",
                      weight: FontWeight.w400,
                    ),

                    16.ph,
                    //////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomText(
                          "You will receive ",
                          fontsize: 16,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                        Row(
                          children: [
                            Container(

                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black
                                ),
                                borderRadius: BorderRadius.circular(4),

                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 4),
                              margin: const EdgeInsets.only(right: 8),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    "\$",
                                    fontsize: 14,
                                    color: AppColors.primaryColor,
                                    fontFamily: "Sans",
                                    weight: FontWeight.w500,
                                  ),
                                  // Spacer(),
                                  CustomText(
                                    "0.90",
                                    fontsize: 14,
                                    color: AppColors.primaryColor,
                                    fontFamily: "Sans",
                                    weight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                            4.pw,
                            const CustomText(
                              "/hr",
                              fontsize: 16,
                              color: Colors.black,
                              fontFamily: "Sans",
                              weight: FontWeight.w500,
                            ),
                          ],
                        )
                      ],
                    ),
                    8.ph,
                    const CustomText(
                      'The estimated amount you will receive after services fee',
                      fontsize: 13,
                      color: Colors.black,
                      fontFamily: "Sans",
                      weight: FontWeight.w400,
                    ),



                    32.ph,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                                  context, Routes.TitleDashBoardWidget);
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
