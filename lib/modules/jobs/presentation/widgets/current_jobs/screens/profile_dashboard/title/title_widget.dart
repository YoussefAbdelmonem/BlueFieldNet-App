import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/widgets/jobs_defination_row.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';

class TitleDashBoardWidget extends StatelessWidget {
  const TitleDashBoardWidget({Key? key}) : super(key: key);

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
                          "title&overview",
                          fontsize: 16,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                        CustomText(
                          "7/11",
                          fontsize: 16,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                      ],
                    ),
                   16.ph,
                    const CustomText(
                      "Title",
                      fontsize: 16,
                      color: AppColors.font,
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),
                    8.ph,
                    TextFormFieldWidget(
                      hintText: "Relationship Advisor",
                      backgroundColor: AppColors.additionalButtonColor,
                      // borderColor: Colors.white,
                      activeBorderColor: Colors.white,

                      hintSize: 14,
                    ),
                    24.ph,
                    const CustomText(
                      "profesional overview",
                      fontsize: 16,
                      color: Color(0xFF20384B),
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),

                    8.ph,
                    TextFormFieldWidget(
                      hintText: "25 years of finance experience",
                      minLines: 4,
                      maxLines: 5,
                      backgroundColor: AppColors.additionalButtonColor,
                      // borderColor: Colors.white,
                      activeBorderColor: Colors.white,

                      hintSize: 12,
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
                              context, Routes.ProfilePhotoDashBoardWidget);
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
