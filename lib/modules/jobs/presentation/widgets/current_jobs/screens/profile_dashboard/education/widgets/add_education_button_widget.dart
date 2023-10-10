import 'package:bluefieldnet/core/helpers/alerts.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class AddEducationButtonWidget extends StatelessWidget {
  const AddEducationButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextButtonWidget(
      function: () {
        Alerts.dialog(context, child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText(
                      "Add Education",
                      fontsize: 20,
                      color: AppColors.font,
                      fontFamily: "Sans",
                      weight: FontWeight.w700,
                    ),
                    IconButton(
                        onPressed: () {

                        },
                        icon: SvgPicture.asset(
                            "assets/icons/x.svg")),


                  ],
                ),
                8.ph,
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 0
                  ),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey.shade400,

                  ),
                ),
                8.ph,
                const CustomText(
                  "School",
                  fontsize: 16,
                  color: Color(0xFF20384B),
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                8.ph,
                TextFormFieldWidget(
                  hintText: "CFA Insitiues",
                ),
                8.ph,
                const CustomText(
                  "area of study(optional)",
                  fontsize: 16,
                  color: Color(0xFF20384B),
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                8.ph,
                TextFormFieldWidget(
                  hintText: "Financial analysis",
                ),
                8.ph,
                const CustomText(
                  "degree(optional)",
                  fontsize: 16,
                  color: Color(0xFF20384B),
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                8.ph,
                TextFormFieldWidget(
                  hintText: "Ex: Bachelor",
                ),
                8.ph,
                const CustomText(
                  "Years attend (optional)",
                  fontsize: 16,
                  color: Color(0xFF20384B),
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                8.ph,
                Row(
                  children: [
                    Expanded(
                      child: TextFormFieldWidget(
                        hintText: "From",
                      ),
                    ),
                    8.pw,
                    Expanded(
                      child: TextFormFieldWidget(
                        hintText: "To",
                      ),
                    ),
                  ],
                ),
                8.ph,
                const CustomText(
                  "Description (optional)",
                  fontsize: 16,
                  color: Color(0xFF20384B),
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                8.ph,
                TextFormFieldWidget(
                  hintText: "describe your awards , studies ,etc ........  ",
                  maxLines: 5,
                  minLines: 4,
                ),
                16.ph,
                ButtonWidget(
                  borderColor: AppColors.primaryColor,
                  buttonColor: Colors.white,
                  height: 40,
                  textColor: AppColors.primaryColor,
                  withBorder: true,
                  title: "Cancel",
                ),
                16.ph,
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonWidget(
                        width: 120,
                        height: 40,
                        borderColor: AppColors.primaryColor,
                        withBorder: true,
                        buttonColor: Colors.white,
                        textColor: AppColors.primaryColor,
                        title: "Save&more",
                        fontFamily: "Roboto",
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ButtonWidget(
                        width: 120,
                        height: 40,
                        onTap: () {
                          // Navigator.pushNamed(
                          //     context, Routes.ExpertiseLevelProfileDashboardWidget);
                        },
                        title: "Next",
                        fontFamily: "Roboto",
                        buttonColor: AppColors.buttonColor,
                      ),
                    ])

              ],
            ),
          ),
        ));
      },
      text: "+ add education",
      fontFamily: "Sans",
      fontweight: FontWeight.w500,
      size: 14,
    );

  }
}
