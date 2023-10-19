
import 'package:bluefieldnet/core/helpers/alerts.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class EditPasswordButton extends StatelessWidget {
  const EditPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  IconButton(onPressed: (){
      Alerts.dialog(context, child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    "change password",
                    fontsize: 16,
                    color: AppColors.primaryColor,
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
                "old password",
                fontsize: 16,
                color: Color(0xFF20384B),
                fontFamily: "Sans",
                weight: FontWeight.w500,
              ),
              8.ph,
              SizedBox(
                height: 40,
                child: TextFormFieldWidget(
                  hintText: "old password",
                ),
              ),
              8.ph,
              const CustomText(
                "new password",
                fontsize: 16,
                color: Color(0xFF20384B),
                fontFamily: "Sans",
                weight: FontWeight.w500,
              ),
              8.ph,
              SizedBox(
                height: 40,
                child: TextFormFieldWidget(
                  hintText: "new password",
                ),
              ),
              8.ph,
              const CustomText(
                "confirm new password",
                fontsize: 16,
                color: Color(0xFF20384B),
                fontFamily: "Sans",
                weight: FontWeight.w500,
              ),
              8.ph,
              SizedBox(
                height: 40,
                child: TextFormFieldWidget(
                  hintText: "CEO",
                ),
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
                      title: "cancel",
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
                      title: "save",
                      fontFamily: "Roboto",
                      buttonColor: AppColors.buttonColor,
                    ),
                  ])

            ],
          ),
        ),
      ));
    }, icon: SvgPicture.asset("assets/icons/Edit.svg"));

  }
}
