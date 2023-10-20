import 'package:bluefieldnet/core/helpers/alerts.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_details_widget/widget/project_type_toggle.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/widgets/custome_row_defination.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/Router/Router.dart';
import '../../cubit/cubit.dart';

class JobDetailsWidget extends StatefulWidget {
  const JobDetailsWidget({Key? key}) : super(key: key);

  @override
  State<JobDetailsWidget> createState() => _JobDetailsWidgetState();
}

class _JobDetailsWidgetState extends State<JobDetailsWidget> {
  bool checkVal = false;

  @override
  Widget build(BuildContext context) {
    final cubit = PostAJobCubit.get(context);

    return Scaffold(
      backgroundColor: AppColors.whiteBackground,
      body: CustomScrollView(
        slivers: [
          DefinitionRow(
            title: "Details",
          ).SliverBox,
          Container(
            color: AppColors.additionalButtonColor,
            height: 16,
            width: double.infinity,
          ).SliverBox,
          16.ph.SliverBox,
          const CustomText(
            'What type of project do you have?',
            fontsize: 20,
            color: AppColors.font,
            fontFamily: "Sans",
            weight: FontWeight.w500,
          ).SliverPadding,
          16.ph.SliverPadding,
          ProjectToggleWidget(),
          16.ph.SliverPadding,
          const CustomText(
            'Screening Questions (optional)',
            fontsize: 14,
            color: AppColors.font,
            fontFamily: "Sans",
            weight: FontWeight.w500,
          ).SliverPadding,
          16.ph.SliverPadding,
          SliverList.builder(
            // physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Row(children: [
                Checkbox.adaptive(
                    // fillColor:
                    //     MaterialStateProperty.all(AppColors.primaryColor),
                    value: cubit.postAJobRequest.screening_question_id ==
                        cubit.postJobData?.questions?[index].id.toString(),
                    onChanged: (bool? v) {
                      setState(() {
                        cubit.postAJobRequest.screening_question_id =
                            cubit.postJobData?.questions?[index].id.toString();
                        print(cubit.postAJobRequest.screening_question_id);
                      });
                    }),
                8.pw,
                CustomText(
                  cubit.postJobData?.questions?[index].question ?? '',
                  fontsize: 12,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
              ]);
            },
            itemCount: cubit.postJobData?.questions?.length ?? 0,
            //  shrinkWrap: true,
          ),
          16.ph.SliverPadding,
          const CustomText(
            'Cover Letter',
            fontsize: 14,
            color: AppColors.font,
            fontFamily: "Sans",
            weight: FontWeight.w500,
          ).SliverPadding,
          16.ph.SliverPadding,
          const CustomText(
            'Ask freelancers and agencies to write a cover letter introducing themselves.',
            fontsize: 10,
            color: AppColors.font,
            fontFamily: "Sans",
            weight: FontWeight.w400,
          ).SliverPadding,
          4.ph.SliverPadding,
          Row(children: [
            Checkbox.adaptive(
                value: cubit.postAJobRequest.cover_letter == "1",
                onChanged: (bool? v) {
                  setState(() {});
                  cubit.postAJobRequest.cover_letter = v == true ? "1" : null;
                }),
            8.pw,
            const CustomText(
              'Yes, require a cover letter',
              fontsize: 16,
              color: Color(0xFF495858),
              fontFamily: "Roboto",
              weight: FontWeight.w500,
            ),
          ]).SliverBox,
          32.ph.SliverPadding,
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                if (cubit.postAJobRequest.project_type_id == null) {
                  Alerts.snack(
                      text: 'You have to select Project Type',
                      state: SnackState.failed);
                } else {
                  Navigator.pushNamed(context, Routes.JobExpertiseWidget);
                }
              },
              title: "Next",
              buttonColor: AppColors.buttonColor,
            ),
          ]).SliverPadding

          /*    Container(
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
                        Checkbox.adaptive(
                            value:
                                cubit.postAJobRequest.screening_question_id ==
                                    cubit.postJobData?.questions?[index].id
                                        .toString(),
                            onChanged: (bool? v) {
                              setState(() {
                                cubit.postAJobRequest.screening_question_id =
                                    cubit.postJobData?.questions?[index].id
                                        .toString();
                                print(cubit
                                    .postAJobRequest.screening_question_id);
                              });
                            }),
                        8.pw,
                        CustomText(
                          cubit.postJobData?.questions?[index].question ?? '',
                          fontsize: 10,
                          color: AppColors.font,
                          fontFamily: "Sans",
                          weight: FontWeight.w500,
                        ),
                      ]);
                    },
                    itemCount: cubit.postJobData?.questions?.length ?? 0,
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
                    Checkbox.adaptive(
                        value: cubit.postAJobRequest.cover_letter == "1",
                        onChanged: (bool? v) {
                          setState(() {});
                          cubit.postAJobRequest.cover_letter =
                              v == true ? "1" : null;
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
        */
        ],
        // shrinkWrap: true,
        // key: Key("JobDetailsWidget"),
      ),
    );
  }
}
