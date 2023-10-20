import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/widgets/custome_row_defination.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/dropdown.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:bluefieldnet/shared/widgets/myLoading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../cubit/cubit.dart';
import '../../domain/model/post_a_job_model.dart';

class JobReviewWidget extends StatelessWidget {
  const JobReviewWidget({Key? key}) : super(key: key);
  String getCategory(PostAJobCubit cubit) {
    final dataCategory = cubit.postJobData?.categories;
    final data = cubit.postAJobRequest;
    final selectedCategory = dataCategory
        ?.firstWhere((element) => element.id.toString() == data.category_id);

    return "${selectedCategory?.title ?? ''} , ${selectedCategory?.child?.firstWhere((element) => element.id.toString() == cubit.postAJobRequest.sub_category_id).title ?? ''}";
  }

  String getQuestions(PostAJobCubit cubit) {
    final questions = cubit.postJobData?.questions;
    final data = cubit.postAJobRequest;
    final selectedCategory = questions?.firstWhere(
        (element) => element.id.toString() == data.screening_question_id,
        orElse: () => Questions());

    return "${selectedCategory?.question ?? 'No Question'}";
  }

  String getType(PostAJobCubit cubit) {
    final dataType = cubit.postJobData?.projectTypes;
    final data = cubit.postAJobRequest;
    final selectedDataType = dataType?.firstWhere(
        (element) => element.id.toString() == data.project_type_id);

    return selectedDataType?.title ?? '';
  }

  List getSkils(PostAJobCubit cubit) {
    final dataType = [];
    final data = cubit.postAJobRequest.skills;
    var concatenate = StringBuffer();
    final selectedDataType = data?.forEach((element) {
      dataType.add(element.title);
      // concatenate.write(element.title);
    });

    return dataType /* data.toString().replaceAll('[', '').replaceAll(']', '') */;
  }

  @override
  Widget build(BuildContext context) {
    final cubit = PostAJobCubit.get(context);
    return Scaffold(
      backgroundColor: AppColors.whiteBackground,
      body: CustomScrollView(
        slivers: [
          DefinitionRow(
            title: "Review",
          ).SliverBox,
          16.ph.SliverBox,
          Container(
            width: MediaQuery.of(context).size.width * 1,
            // padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  'Title',
                  fontsize: 20,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                16.ph,
                CustomText(
                  cubit.postAJobRequest.title ?? '',
                  fontsize: 12,
                  color: AppColors.font,
                  fontFamily: "Roboto",
                  weight: FontWeight.w500,
                ),
                16.ph,
                const CustomText(
                  'Category',
                  fontsize: 20,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                16.ph,
                CustomText(
                  getCategory(cubit),
                  fontsize: 12,
                  color: AppColors.font,
                  fontFamily: "Roboto",
                  weight: FontWeight.w500,
                ),
              ],
            ),
          ).SliverPadding,
          16.ph.SliverPadding,
          Container(
            width: MediaQuery.of(context).size.width * 1,
            // padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  'Description',
                  fontsize: 20,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                16.ph,
                CustomText(
                  cubit.postAJobRequest.description ?? '',
                  fontsize: 12,
                  color: AppColors.font,
                  fontFamily: "Roboto",
                  weight: FontWeight.w500,
                ),
              ],
            ),
          ).SliverPadding,
          // 16.ph.SliverPadding,
          Container(
            width: MediaQuery.of(context).size.width * 1,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  'Details',
                  fontsize: 16,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                16.ph,
                const CustomText(
                  'What type of project do you have?',
                  fontsize: 12,
                  color: AppColors.font,
                  fontFamily: "Roboto",
                  weight: FontWeight.w600,
                ),
                8.ph,
                CustomText(
                  getType(cubit),
                  fontsize: 12,
                  color: AppColors.font,
                  fontFamily: "Roboto",
                  weight: FontWeight.w500,
                ),
                16.ph,
                const CustomText(
                  'Screening Questions (optional)',
                  fontsize: 12,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w600,
                ),
                8.ph,
                CustomText(
                  getQuestions(cubit),
                  fontsize: 12,
                  color: AppColors.font,
                  fontFamily: "Roboto",
                  weight: FontWeight.w500,
                ),
                16.ph,
                const CustomText(
                  'Cover letter',
                  fontsize: 12,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w600,
                ),
                8.ph,
                CustomText(
                  cubit.postAJobRequest.cover_letter == "1"
                      ? 'Yes, require a cover letter'
                      : 'No, not require a cover letter',
                  fontsize: 12,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
              ],
            ),
          ).SliverBox,
          16.ph.SliverBox,
          Container(
            width: MediaQuery.of(context).size.width * 1,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  'Expertise',
                  fontsize: 16,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                16.ph,
                const CustomText(
                  'Skills and expertise you look for.',
                  fontsize: 12,
                  color: AppColors.font,
                  fontFamily: "Roboto",
                  weight: FontWeight.w500,
                ),
                16.ph,
                Wrap(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: getSkils(cubit)
                      .map(
                        (e) => Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          margin: const EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          color: Colors.grey.shade100,
                          child: CustomText(
                            e,
                            fontsize: 14,
                            color: AppColors.font,
                            fontFamily: "Roboto",
                            weight: FontWeight.w500,
                          ),
                        ),
                      )
                      .toList(),
                )
              ],
            ),
          ).SliverBox,
          16.ph.SliverBox,
          Container(
            width: MediaQuery.of(context).size.width * 1,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  'Budget',
                  fontsize: 16,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                16.ph,
                const CustomText(
                  'How would you like to pay your freelancer or agency?',
                  fontsize: 12,
                  color: AppColors.font,
                  fontFamily: "Roboto",
                  weight: FontWeight.w600,
                ),
                8.ph,
                CustomText(
                  cubit.postAJobRequest.payType ?? '',
                  fontsize: 12,
                  color: AppColors.font,
                  fontFamily: "Roboto",
                  weight: FontWeight.w500,
                ),
                16.ph,
                const CustomText(
                  'What level of experience should your freelancer have?',
                  fontsize: 12,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w600,
                ),
                8.ph,
                CustomText(
                  '${cubit.postAJobRequest.level_experince} level',
                  fontsize: 12,
                  color: AppColors.font,
                  fontFamily: "Roboto",
                  weight: FontWeight.w500,
                ),
                16.ph,
                const CustomText(
                  'How long do you expect this project to last?',
                  fontsize: 12,
                  color: AppColors.font,
                  weight: FontWeight.w600,
                ),
                8.ph,
                CustomText(
                  cubit.postAJobRequest.expectedTime?.name ?? '',
                  fontsize: 12,
                  color: AppColors.font,
                  weight: FontWeight.w500,
                ),
                16.ph,
                const CustomText(
                  'Fixed budget',
                  fontsize: 12,
                  color: AppColors.font,
                  weight: FontWeight.w600,
                ),
                8.ph,
                CustomText(
                  "${cubit.postAJobRequest.budget ?? ''} \$",
                  fontsize: 12,
                  color: AppColors.font,
                  weight: FontWeight.w500,
                ),
              ],
            ),
          ).SliverBox,
          32.ph.SliverBox,
          Row(children: [
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
              onTap: () async {
                print(cubit.postAJobRequest.images?.length);
                final res = await cubit.postAnewJob();
                if (res == true) {
                  MySuccess.show();
                  Navigator.pushNamedAndRemoveUntil(
                      context, Routes.JobTitleWidget, (route) => false);
                }
              },
              title: "Publish",
              buttonColor: AppColors.buttonColor,
            ),
          ]).SliverPadding,
          32.ph.SliverBox,
        ],
      ),
    );
  }
}
