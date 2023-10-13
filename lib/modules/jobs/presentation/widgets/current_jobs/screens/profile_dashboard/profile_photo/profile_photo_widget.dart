import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/widgets/jobs_defination_row.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePhotoDashBoardWidget extends StatelessWidget {
  const ProfilePhotoDashBoardWidget({Key? key}) : super(key: key);

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
                          "Profile Photo",
                          fontsize: 16,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                        CustomText(
                          "8/11",
                          fontsize: 16,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                      ],
                    ),
                    16.ph,
                    const CustomText(
                      "please upload a professional portrait that clearly show your face ",
                      fontsize: 10,
                      color: AppColors.font,
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),
                    16.ph,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/images/profilePhoto.svg"),
                        16.pw,
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            const  CustomText(
                              "Profile photo guidelines",
                              fontsize: 16,
                              color: Colors.black,
                              fontFamily: "Sans",
                              weight: FontWeight.w500,
                            ),
                            8.ph,
                            Row(
                              children: [
                                Container(
                                 width: 4,
                                 height: 4,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4),

                                  ),
                                ),
                                4.pw,
                                const  CustomText(
                                  "Professional looking",
                                  fontsize: 14,
                                  color: Colors.black,
                                  fontFamily: "Sans",
                                  weight: FontWeight.w400,
                                ),
                              ]
                            ),
                            8.ph,
                            Row(
                                children: [
                                  Container(
                                    width: 4,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4),

                                    ),
                                  ),
                                  4.pw,
                                  const  CustomText(
                                    "crisp resolution",
                                    fontsize: 14,
                                    color: Colors.black,
                                    fontFamily: "Sans",
                                    weight: FontWeight.w400,
                                  ),
                                ]
                            ),
                            8.ph,
                            Row(
                                children: [
                                  Container(
                                    width: 4,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4),

                                    ),
                                  ),
                                  4.pw,
                                  const  CustomText(
                                    "Include only your face",
                                    fontsize: 14,
                                    color: Colors.black,
                                    fontFamily: "Sans",
                                    weight: FontWeight.w400,
                                  ),
                                ]
                            ),
                            8.ph,
                            Row(
                                children: [
                                  Container(
                                    width: 4,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4),

                                    ),
                                  ),
                                  4.pw,
                                  const  CustomText(
                                    "Have a natural background",
                                    fontsize: 14,
                                    color: Colors.black,
                                    fontFamily: "Sans",
                                    weight: FontWeight.w400,
                                  ),
                                ]
                            )



                          ],
                        ),
                      ],
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
