import 'package:bluefieldnet/core/helpers/alerts.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddEmploymentButtonWidget extends StatelessWidget {
  const AddEmploymentButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButtonWidget(
      function: () {
        Alerts.dialog(context,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomText(
                          "Add Employment",
                          fontsize: 20,
                          color: AppColors.font,
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/x.svg")),
                      ],
                    ),
                    16.ph,
                    const CustomText(
                      "Company",
                      fontsize: 16,
                      color: Color(0xFF20384B),
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),
                    8.ph,
                    SizedBox(
                      height: 40,
                      child: TextFormFieldWidget(
                        hintText: "Bluefield Net",
                      ),
                    ),
                    8.ph,
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CustomText(
                                "location",
                                fontsize: 16,
                                color: Color(0xFF20384B),
                                fontFamily: "Sans",
                                weight: FontWeight.w500,
                              ),
                              8.ph,
                              SizedBox(
                                height: 40,
                                child: TextFormFieldWidget(
                                  hintText: "Vancouver",
                                ),
                              ),
                            ],
                          ),
                        ),
                        8.pw,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CustomText(
                                "Country",
                                fontsize: 16,
                                color: Color(0xFF20384B),
                                fontFamily: "Sans",
                                weight: FontWeight.w500,
                              ),
                              8.ph,
                              SizedBox(
                                height: 40,
                                child: TextFormFieldWidget(
                                  hintText: "Canada",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    16.ph,
                    const CustomText(
                      "Title",
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
                    const CustomText(
                      "period",
                      fontsize: 16,
                      color: Color(0xFF20384B),
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),
                    8.ph,
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 40,
                            child: TextFormFieldWidget(
                              hintText: "January",
                            ),
                          ),
                        ),
                        8.pw,
                        Expanded(
                          child: SizedBox(
                            height: 40,
                            child: TextFormFieldWidget(
                              hintText: "2022",
                            ),
                          ),
                        ),
                      ],
                    ),
                    8.ph,
                    CheckboxListTile(
                      value: true,
                      onChanged: (e) {},
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: Colors.black.withOpacity(0.6),
                      title:  const CustomText(
                        "i currently work here",
                        fontsize: 14,
                        color: Color(0xFF20384B),
                        fontFamily: "Roboto",
                        weight: FontWeight.w400,
                      ),
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
                      hintText:
                          "describe your awards , studies ,etc ........  ",
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
      text: "+ add Employment",
      fontFamily: "Sans",
      fontweight: FontWeight.w500,
      size: 14,
    );
  }
}
