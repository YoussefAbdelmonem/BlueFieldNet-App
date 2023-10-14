import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/post_a_job/domain/model/check_box_models.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_details_widget/widget/project_type_toggle.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_visibility_widget/widgets/job_seen_toggle.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_visibility_widget/widgets/job_title_widget.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_visibility_widget/widgets/row_amount_earned.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_visibility_widget/widgets/talent_prefrence_widget.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/widgets/custome_row_defination.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../../../../core/Router/Router.dart';
import '../../cubit/cubit.dart';

class JobVisibilityWidget extends StatefulWidget {
  const JobVisibilityWidget({Key? key}) : super(key: key);

  @override
  State<JobVisibilityWidget> createState() => _JobVisibilityWidgetState();
}

class _JobVisibilityWidgetState extends State<JobVisibilityWidget> {
  ///check box

  @override
  Widget build(BuildContext context) {
    final cubit = PostAJobCubit.get(context);
    return Scaffold(
      backgroundColor: AppColors.whiteBackground,
      body: CustomScrollView(
        slivers: [
          DefinitionRow(title: "Visibility").SliverBox,
          Container(
            color: AppColors.additionalButtonColor,
            height: 16,
            width: double.infinity,
          ).SliverBox,
          16.ph.SliverBox,
          const CustomText(
            'What skills and expertise are most important to you job?',
            fontsize: 16,
            color: AppColors.font,
            fontFamily: "Sans",
            weight: FontWeight.w500,
          ).SliverPadding,
          16.ph.SliverBox,
          const CustomText(
            'Who can see your job?',
            fontsize: 16,
            color: AppColors.font,
            fontFamily: "Sans",
            weight: FontWeight.w500,
          ).SliverBox,
          16.ph.SliverPadding,
          JobSeenToggleWidget().SliverPadding,
          16.ph.SliverBox,
          const CustomText(
            'Talent Preferences (optional)',
            fontsize: 16,
            color: AppColors.font,
            fontFamily: "Sans",
            weight: FontWeight.w500,
          ).SliverPadding,
          8.ph.SliverBox,
          const CustomText(
            'Specify the qualifications you\'re looking for in a successful proposal.',
            fontsize: 12,
            color: AppColors.checkBoxTextColor,
            fontFamily: "Roboto",
            weight: FontWeight.w500,
          ).SliverPadding,
          16.ph.SliverBox,
          TalentPreferenceWidget().SliverPadding,
          16.ph.SliverPadding,
          JobTitleWidget().SliverPadding,
          16.ph.SliverPadding,
          RowAmountEarnedWidget().SliverPadding,
          64.ph.SliverPadding,
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            ButtonWidget(
              width: 150,
              height: 40,
              borderColor: AppColors.buttonBorderColor,
              withBorder: true,
              buttonColor: Colors.white,
              textColor: AppColors.buttonBorderColor,
              title: "previous",
              onTap: () {
                Navigator.pop(context);
              },
            ),
            16.pw,
            ButtonWidget(
              width: 150,
              height: 40,
              onTap: () {
                Navigator.pushNamed(context, Routes.JobBudgetWidget);
              },
              title: "Next",
              buttonColor: AppColors.buttonColor,
            ),
          ]).SliverPadding,
          32.ph.SliverPadding
          /*    Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.whiteBackground,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    'What skills and expertise are most important to you job?',
                    fontsize: 16,
                    color: AppColors.font,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  16.ph,
                  const CustomText(
                    'Who can see your job?',
                    fontsize: 16,
                    color: AppColors.font,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  16.ph,
                  ProjectToggleWidget(),
                  16.ph,
                  const CustomText(
                    'Talent Preferences (optional)',
                    fontsize: 16,
                    color: AppColors.font,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  8.ph,
                  const CustomText(
                    'Specify the qualifications you\'re looking for in a successful proposal.',
                    fontsize: 12,
                    color: AppColors.checkBoxTextColor,
                    fontFamily: "Roboto",
                    weight: FontWeight.w500,
                  ),
                  16.ph,
                  TalentPreferenceWidget(),
                  16.ph,
                  JobTitleWidget(),
                  16.ph,
                  RowAmountEarnedWidget(),
                  64.ph,
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
                          title: "previous",
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        16.pw,
                        ButtonWidget(
                          width: 150,
                          height: 40,
                          onTap: () {
                            Navigator.pushNamed(
                                context, Routes.JobBudgetWidget);
                          },
                          title: "Next",
                          buttonColor: AppColors.buttonColor,
                        ),
                      ]),
                  32.ph
                ],
              ),
            ),
          ),
        */
        ],
      ),
    );
  }
}
