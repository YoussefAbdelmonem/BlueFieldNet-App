import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/profile_dashboard/experties_level/widget/experties_level_toggle.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/widgets/jobs_defination_row.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';

class ExpertiseLevelProfileDashboardWidget extends StatelessWidget {
  const ExpertiseLevelProfileDashboardWidget({Key? key}) : super(key: key);

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
                          "Expertise Level",
                          fontsize: 16,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                        CustomText(
                          "2/11",
                          fontsize: 16,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                      ],
                    ),
                   16.ph,

                     CustomText(
                      'What is your level of experience in this field?',
                      fontsize: 14,
                      color: Colors.black.withOpacity(0.6),
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),

                    16.ph,
                    ExpertiseLevelToggleWidget(),

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
                                  context, Routes.EducationDashboardWidget);
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
