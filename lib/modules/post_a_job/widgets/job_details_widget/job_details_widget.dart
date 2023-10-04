import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_details_widget/widget/project_type_toggle.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/widgets/custome_row_defination.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/Router/Router.dart';

class JobDetailsWidget extends StatefulWidget {
  const JobDetailsWidget({Key? key}) : super(key: key);

  @override
  State<JobDetailsWidget> createState() => _JobDetailsWidgetState();
}

class _JobDetailsWidgetState extends State<JobDetailsWidget> {
  bool checkVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          DefinitionRow(
            title: "Details",
          ).SliverBox,
          16.ph.SliverBox,
          Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.whiteBackground,
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    'What type of project do you have?',
                    fontsize: 20,
                    color: AppColors.font,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  16.ph,
                  ProjectToggleWidget(),
                  16.ph,
                  const CustomText(
                    'Screening Questions (optional)',
                    fontsize: 14,
                    color: AppColors.font,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  16.ph,
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Row(children: [
                        Checkbox(
                            value: checkVal,
                            onChanged: (bool? v) {
                              setState(() {
                                checkVal = v!;
                              });
                            }),
                        8.pw,
                        const CustomText(
                          'Do you have any questions about the job description?',
                          fontsize: 10,
                          color: AppColors.font,
                          fontFamily: "Sans",
                          weight: FontWeight.w500,
                        ),
                      ]);
                    },
                    itemCount: 4,
                    shrinkWrap: true,
                  ),
                  16.ph,
                  const CustomText(
                    'Cover Letter',
                    fontsize: 14,
                    color: AppColors.font,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  16.ph,
                  Row(children: [
                    Checkbox(
                        value: checkVal,
                        onChanged: (bool? v) {
                          setState(() {
                            checkVal = v!;
                          });
                        }),
                    8.pw,
                    const CustomText(
                      'Yes, require a cover letter',
                      fontsize: 16,
                      color: AppColors.checkBoxTextColor,
                      fontFamily: "Roboto",
                      weight: FontWeight.w500,
                    ),
                  ]),
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
                          onTap: () => Navigator.pop(context),
                        ),
                        ButtonWidget(
                          width: 150,
                          height: 40,
                          onTap: () {
                            Navigator.pushNamed(
                                context, Routes.JobExpertiseWidget);
                          },
                          title: "Next",
                          buttonColor: AppColors.buttonColor,
                        ),
                      ])
                ],
              ),
            ),
          ).SliverBox,
        ],
        // shrinkWrap: true,
        // key: Key("JobDetailsWidget"),
      ),
    );
  }
}
