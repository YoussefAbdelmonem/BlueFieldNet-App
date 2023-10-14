import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/widgets/custome_row_defination.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../../../../shared/widgets/multi_choise_dropdown.dart';
import '../../cubit/cubit.dart';
import '../../domain/model/post_a_job_model.dart';

class JobExpertiseWidget extends StatefulWidget {
  const JobExpertiseWidget({Key? key}) : super(key: key);

  @override
  State<JobExpertiseWidget> createState() => _JobExpertiseWidgetState();
}

class _JobExpertiseWidgetState extends State<JobExpertiseWidget> {
  // final List<String> items = [
  //   'Item1',
  //   'Item2',
  //   'Item3',
  //   'Item4',
  // ];
  // List<String> selectedItems = [];
  @override
  Widget build(BuildContext context) {
    final cubit = PostAJobCubit.get(context);

    return Scaffold(
      backgroundColor: AppColors.whiteBackground,
      body: CustomScrollView(
        slivers: [
          DefinitionRow(
            title: "Expertise",
          ).SliverBox,
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
          16.ph.SliverPadding,
          const CustomText(
            'Job Skills (optional)',
            fontsize: 16,
            color: AppColors.font,
            fontFamily: "Sans",
            weight: FontWeight.w500,
          ).SliverPadding,
          16.ph.SliverPadding,
          MultiSelectDropDown<Skills>(
            label: "",
            selectedItems: cubit.postAJobRequest.skill_id
                ?.map((e) => Skills(id: int.parse(e)))
                .toList(growable: false),
            items: () => cubit.postJobData?.skills ?? [],
            onChange: (s) {
              cubit.postAJobRequest.skill_id =
                  s.map((e) => e.id.toString()).toList(growable: false);
            },
            itemAsString: (p0) => p0.title ?? '',
          ).SliverPadding,
          64.ph.SliverPadding,
          64.ph.SliverPadding,
          Row(children: [
            ButtonWidget(
              width: 150,
              height: 40,
              onTap: () {
                Navigator.pushNamed(context, Routes.JobVisibilityWidget);
              },
              title: "Next",
              buttonColor: AppColors.buttonColor,
            ),
            16.pw,
            ButtonWidget(
              width: 150,
              height: 40,
              borderColor: AppColors.buttonBorderColor,
              withBorder: true,
              buttonColor: Colors.white,
              textColor: AppColors.buttonBorderColor,
              title: "Cancel",
              onTap: () {
                Navigator.pop(context);
              },
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
                    'Job Skills (optional)',
                    fontsize: 16,
                    color: AppColors.font,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  16.ph,
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MultiSelectDropDown<Skills>(
                        items: () => cubit.postJobData?.skills ?? [],
                        onChange: (s) {
                          cubit.postAJobRequest.skill_id = s
                              .map((e) => e.id.toString())
                              .toList(growable: false);
                        },
                        itemAsString: (p0) => p0.title ?? '',
                      ),
                    ],
                  ),
                  64.ph,
                  64.ph,
                  Row(children: [
                    ButtonWidget(
                      width: 150,
                      height: 40,
                      onTap: () {
                        Navigator.pushNamed(
                            context, Routes.JobVisibilityWidget);
                      },
                      title: "Next",
                      buttonColor: AppColors.buttonColor,
                    ),
                    16.pw,
                    ButtonWidget(
                      width: 150,
                      height: 40,
                      borderColor: AppColors.buttonBorderColor,
                      withBorder: true,
                      buttonColor: Colors.white,
                      textColor: AppColors.buttonBorderColor,
                      title: "Cancel",
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ]),
                  32.ph
                ],
              ),
            ),
          ).SliverBox,
        */
        ],
      ),
    );
  }
}
