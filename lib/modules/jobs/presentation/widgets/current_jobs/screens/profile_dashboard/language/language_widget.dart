import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/screens/profile_dashboard/language/widgets/add_language_button.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/widgets/jobs_defination_row.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LanguageDashboardWidget extends StatelessWidget {
  const LanguageDashboardWidget({Key? key}) : super(key: key);

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
                          "Languages",
                          fontsize: 16,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                        CustomText(
                          "5/11",
                          fontsize: 16,
                          color: Color(0xFF20384B),
                          fontFamily: "Sans",
                          weight: FontWeight.w700,
                        ),
                      ],
                    ),
                    8.ph,
                    const CustomText(
                      'What is your english proficiency? ',
                      fontsize: 14,
                      color: Colors.black,
                      fontFamily: "Sans",
                      weight: FontWeight.w400,
                    ),
                    16.ph,
                    ListView.builder(
                      itemBuilder: (context, index) {
                        return CheckboxListTile(
                          value: true,
                          onChanged: (value) {},
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CustomText(
                                'Basic',
                                fontsize: 16,
                                color: Colors.black,
                                fontFamily: "Sans",
                                weight: FontWeight.w500,
                              ),
                              4.ph,
                              const CustomText(
                                'I write in this language decently  ',
                                fontsize: 16,
                                color: Colors.black,
                                fontFamily: "Sans",
                                weight: FontWeight.w400,
                              ),
                            ],
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsets.zero,
                          dense: true,
                          activeColor: AppColors.buttonColor,
                        );
                      },
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 5,
                    ),
                    8.ph,
                    AddLanguageButtonWidget(),
                    16.ph,
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black
                                ),
                                borderRadius: BorderRadius.circular(4),

                              ),
                              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                              child: CustomText(
                                "+ English",
                                fontsize: 16,
                                color: Colors.black,
                                fontFamily: "Sans",
                                weight: FontWeight.w700,
                              ),
                            ),
                          ),
                          8.pw,
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black
                                ),
                                borderRadius: BorderRadius.circular(4),

                              ),
                              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                              child: CustomText(
                                "+ English",
                                fontsize: 16,
                                color: Colors.black,
                                fontFamily: "Sans",
                                weight: FontWeight.w700,
                              ),
                            ),
                          ),
                          8.pw,
                          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Delete.svg"))
                        ],
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
                                  context, Routes.HourlyRateDashboardWidget);
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
