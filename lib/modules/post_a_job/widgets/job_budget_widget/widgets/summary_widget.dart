import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.grey.shade100,

      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 32
        ),
        child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    const CustomText(
                      'Payment',
                      fontsize: 14,
                      color: AppColors.font,
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),
                    8.ph,
                    const CustomText(
                      '0.00',
                      fontsize: 14,
                      color: AppColors.font,
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),

                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const CustomText(
                      'Amount',
                      fontsize: 14,
                      color: AppColors.font,
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),
                    8.ph,
                    const CustomText(
                      '0.00',
                      fontsize: 14,
                      color: AppColors.font,
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),

                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const CustomText(
                      'Date',
                      fontsize: 14,
                      color: AppColors.font,
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),
                    8.ph,
                    const CustomText(
                      '20-10-2023',
                      fontsize: 14,
                      color: AppColors.font,
                      fontFamily: "Sans",
                      weight: FontWeight.w500,
                    ),

                  ],
                ),
              ),


            ]
        ),
      ),
    );

  }
}
