import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/widgets/jobs_defination_row.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';

class ProfileDashboardWidget extends StatelessWidget {
  const ProfileDashboardWidget({Key? key}) : super(key: key);

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
                          "expertise",
                          fontsize: 16,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                        CustomText(
                          "1/11",
                          fontsize: 16,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                      ],
                    ),
                    8.ph,
                    CustomText(
                      'Tell us about the work you do',
                      fontsize: 15,
                      color: Colors.black.withOpacity(0.6),
                      fontFamily: "Sans",
                      weight: FontWeight.w600,
                    ),
                    16.ph,
                    const CustomText(
                      'What is the main services you offer ?',
                      fontsize: 14,
                      color: Colors.black,
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),
                    8.ph,
                    TextFormFieldWidget(
                      hintText: "Accounting & Bookkeeping",
                      backgroundColor: AppColors.additionalButtonColor,
                      // borderColor: Colors.white,
                      activeBorderColor: Colors.white,

                      hintSize: 12,
                    ),
                    16.ph,
                    const CustomText(
                      'Select up to 5 types of work.',
                      fontsize: 14,
                      color: AppColors.primaryColor,
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),
                    8.ph,
                    CheckboxListTile(
                      value: true,
                      onChanged: (e) {},
                      title: const CustomText(
                        '1.Accounting & Bookkeeping',
                        fontsize: 14,
                        color: Colors.black,
                        fontFamily: "Sans",
                        weight: FontWeight.w500,
                      ),
                      dense: true,
                      activeColor: Colors.black.withOpacity(0.6),

                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    8.ph,
                    const CustomText(
                      'What is the main services you offer ?',
                      fontsize: 14,
                      color: Colors.black,
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),
                    8.ph,
                    const CustomText(
                      'Enter up to 8 more skills',
                      fontsize: 12,
                      color: AppColors.primaryColor,
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),
                    16.ph,
                    TextFormFieldWidget(
                      maxLines: 6,
                      minLines: 5,
                      hintText: "Choose some options.....",
                      backgroundColor: AppColors.additionalButtonColor,
                      activeBorderColor: Colors.white,
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
                                  context, Routes.ExpertiseLevelProfileDashboardWidget);
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
