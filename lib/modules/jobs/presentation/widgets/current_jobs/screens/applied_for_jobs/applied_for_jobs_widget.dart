import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/widgets/jobs_defination_row.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';

class AppliedForJobWidget extends StatelessWidget {
  const AppliedForJobWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              JobDefinitionRow(title: "Applied For Jobs"),
              16.ph,
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      "Tax Expert",
                      fontsize: 24,
                      color: Color(0xFF20384B),
                      fontFamily: "Sans",
                      weight: FontWeight.w700,
                    ),
                    8.ph,
                    const CustomText(
                      "Hourly - Expert - Est. Time: I don't know yet, \$15,000.00 - Posted 8/15/23",
                      fontsize: 10,
                      color: Color(0xFFD9D9D9),
                      fontFamily: "Sans",
                      weight: FontWeight.w600,
                    ),
                    8.ph,
                    TextFormFieldWidget(
                      hintText: "hgfkhgcfkhgfkgh",
                      backgroundColor: AppColors.additionalButtonColor,
                      // borderColor: Colors.white,
                      activeBorderColor: Colors.white,

                      hintSize: 14,
                    ),
                  ],
                ),
              ),
              24.ph,
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      "Accountant (One Year Experience)",
                      fontsize: 24,
                      color: Color(0xFF20384B),
                      fontFamily: "Sans",
                      weight: FontWeight.w700,
                    ),
                    8.ph,
                    const CustomText(
                      "Hourly - Expert - Est. Time: I don't know yet, \$15,000.00 - Posted 8/15/23",
                      fontsize: 10,
                      color: Color(0xFFD9D9D9),
                      fontFamily: "Sans",
                      weight: FontWeight.w600,
                    ),
                    8.ph,
                    TextFormFieldWidget(
                      hintText: "The accountant position will work closely with the existing clients and handle day-to-day bookkeeping to maintain accurate, complete, and timely information to achieve overall department objectives.",
                      minLines: 4,
                      maxLines: 5,
                      backgroundColor: AppColors.additionalButtonColor,
                      // borderColor: Colors.white,
                      activeBorderColor: Colors.white,

                      hintSize: 12,
                    ),
                  ],
                ),
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
                        context, Routes.CompleteContactWidget);
                  },
                  title: "Next",
                  buttonColor: AppColors.buttonColor,
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
