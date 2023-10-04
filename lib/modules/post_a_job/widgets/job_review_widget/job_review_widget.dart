import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/widgets/custome_row_defination.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/dropdown.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JobReviewWidget extends StatelessWidget {
  const JobReviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const DefinitionRow(
            title: "Review",
          ).SliverBox,
          16.ph.SliverBox,
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
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
                      const CustomText(
                        'Enter the name of your job post',
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
                      const CustomText(
                        'Accounting & Bookkeeping 1. Accounting & Bookkeeping',
                        fontsize: 12,
                        color: AppColors.font,
                        fontFamily: "Roboto",
                        weight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
                16.ph,
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
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
                      const CustomText(
                        'What the deliverable is',
                        fontsize: 12,
                        color: AppColors.font,
                        fontFamily: "Roboto",
                        weight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
                16.ph,
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
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
                      const CustomText(
                        'One-time project',
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
                      const CustomText(
                        'Accounting & Bookkeeping 1. Accounting & Bookkeeping',
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
                      const CustomText(
                        'Yes, require a cover letter',
                        fontsize: 12,
                        color: AppColors.font,
                        fontFamily: "Sans",
                        weight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
                16.ph,
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            color: Colors.grey.shade100,
                            child: const CustomText(
                              'Auditing',
                              fontsize: 14,
                              color: AppColors.font,
                              fontFamily: "Roboto",
                              weight: FontWeight.w500,
                            ),
                          ),
                          8.pw,
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            color: Colors.grey.shade100,
                            child: const CustomText(
                              'Accounting',
                              fontsize: 14,
                              color: AppColors.font,
                              fontFamily: "Roboto",
                              weight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                16.ph,
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
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
                      const CustomText(
                        'Pay by the hour',
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
                      const CustomText(
                        'Entry level',
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
                      const CustomText(
                        'More than 6 months',
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
                      const CustomText(
                        '\$200.00',
                        fontsize: 12,
                        color: AppColors.font,
                        weight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
                32.ph,
                Row(children: [
                  ButtonWidget(
                    width: 150,
                    height: 40,
                    // onTap: () {
                    //   showDialog(
                    //       context: context,
                    //       builder: (context) {
                    //         return Container(
                    //           color: Colors.grey.shade200,
                    //           child: Column(
                    //             children: [
                    //               SvgPicture.asset(
                    //                   "assets/icons/check_true.svg"),
                    //               16.pw,
                    //               const CustomText(
                    //                 'post is published',
                    //                 fontsize: 12,
                    //                 color: AppColors.primaryColor,
                    //                 weight: FontWeight.w500,
                    //               ),
                    //             ],
                    //           ),
                    //         );
                    //       });
                    // },
                    title: "Publish",
                    buttonColor: AppColors.buttonColor,
                  ),
                ]),
                32.ph,
              ],
            ),
          ).SliverBox,
        ],
      ),
    );
  }
}
