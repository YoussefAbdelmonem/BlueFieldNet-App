
import 'package:bluefieldnet/core/helpers/alerts.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class RemoveEducationButton extends StatelessWidget {
  const RemoveEducationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  IconButton(
        onPressed: () {
          Alerts.dialog(context, child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      "Remove Education",
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
                      horizontal: 8
                  ),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey.shade400,

                  ),
                ),
                8.ph,
                const CustomText(
                  "Are you sure you want to remove (CFA Institute) ",
                  fontsize: 13,
                  maxLine: 2,
                  color: AppColors.primaryColor,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                8.ph,
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8
                  ),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey.shade400,

                  ),
                ),
                8.ph,
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonWidget(
                        width: 150,
                        height: 40,
                        borderColor: AppColors.primaryColor,
                        withBorder: true,
                        buttonColor: Colors.white,
                        textColor: AppColors.buttonBorderColor,
                        title: "Cancel",
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ButtonWidget(
                        width: 150,
                        height: 40,
                        onTap: () {
                          // Navigator.pushNamed(
                          //     context, Routes.ExpertiseLevelProfileDashboardWidget);
                        },
                        title: "Remove",
                        buttonColor: AppColors.buttonColor,
                      ),
                    ]),
                16.ph,
              ],
            ),
          ));

        },
        icon: SvgPicture.asset(
            "assets/icons/Delete.svg"));


  }
}
