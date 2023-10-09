import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_budget_widget/widgets/drop_down_payment.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_budget_widget/widgets/freelancer_experience_toggle.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_budget_widget/widgets/freelancer_time_toggle.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_budget_widget/widgets/freelancer_toggle_payment.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_budget_widget/widgets/summary_widget.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/widgets/custome_row_defination.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/dropdown.dart';
import 'package:flutter/material.dart';

import '../../../../core/Router/Router.dart';

class JobBudgetWidget extends StatefulWidget {
  const JobBudgetWidget({Key? key}) : super(key: key);

  @override
  State<JobBudgetWidget> createState() => _JobBudgetWidgetState();
}

class _JobBudgetWidgetState extends State<JobBudgetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const DefinitionRow(
            title: "Budget",
          ).SliverBox,
          16.ph.SliverBox,
          Container(
            // height: MediaQuery.of(context).size.height /0.1,
            width: MediaQuery.of(context).size.width,
            color: AppColors.whiteBackground,
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    'Budget',
                    fontsize: 20,
                    color: AppColors.font,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  16.ph,
                  const CustomText(
                    'How would you like to pay your freelancer or agency?',
                    fontsize: 14,
                    color: AppColors.font,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  16.ph,
                  BudgetFreelancerTogglePayment(),
                  16.ph,
                  const CustomText(
                    'What level of experience should your freelancer have?',
                    fontsize: 14,
                    color: AppColors.font,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  16.ph,
                  BudgetFreelancerExperienceToggleWidget(),
                  16.ph,
                  const CustomText(
                    'What level of experience should your freelancer have?',
                    fontsize: 14,
                    color: AppColors.font,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  16.ph,
                  DropDownItem(
                    onChanged: (e) {},
                    options: [
                      "More than 6 months",
                      "3 to 6 months",
                      "1 to 3 months",
                      "Less than 1 month",
                    ],
                    hint: "choose time",
                  ),
                  16.ph,
                  const CustomText(
                    'Do you have a time requirement/week for this project?',
                    fontsize: 14,
                    color: AppColors.font,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  16.ph,
                  BudgetFreelancerTimeToggleWidget(),
                  16.ph,
                  const CustomText(
                    'What level of experience should your freelancer have?',
                    fontsize: 14,
                    color: AppColors.font,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  16.ph,
                  PaymentDropDownWidget(),
                  SummaryWidget(),
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
                                context, Routes.JobReviewWidget);
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
      ),
    );
  }
}
