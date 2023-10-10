
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';

class ClearnessIsRequestedWidget extends StatelessWidget {
  const ClearnessIsRequestedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomText(
            "Service Provider Report",
            fontsize: 16,
            color: AppColors.font,
            fontFamily: "Sans",
            weight: FontWeight.w700,
          ),
          16.ph,
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey.shade300),
                  padding:  EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                        "Money received by Bluefield (paid but not cleared)",
                        fontsize: 12,
                        color: AppColors.font,
                        fontFamily: "Sans",
                        weight: FontWeight.w400,
                      ),
                      8.ph,
                      const CustomText(
                        "Total: \$0",
                        fontsize: 16,
                        color:  Color(0xFF20384B),
                        fontFamily: "Sans",
                        weight: FontWeight.w700,
                      ),
                    ],
                  ),
                ),
              ),
              4.pw,
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey.shade300),
                  padding:  EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                        "Money received by Bluefield (paid but not cleared)",
                        fontsize: 12,
                        color: AppColors.font,
                        fontFamily: "Sans",
                        weight: FontWeight.w400,
                      ),
                      8.ph,
                      const CustomText(
                        "Total: \$0",
                        fontsize: 16,
                        color:  Color(0xFF20384B),
                        fontFamily: "Sans",
                        weight: FontWeight.w700,
                      ),
                    ],
                  ),
                ),
              ),
              4.pw,
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey.shade300),
                  padding:  EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                        "Money received by Bluefield (paid but not cleared)",
                        fontsize: 12,
                        color: AppColors.font,
                        fontFamily: "Sans",
                        weight: FontWeight.w400,
                      ),
                      8.ph,
                      const CustomText(
                        "Total: \$0",
                        fontsize: 16,
                        color:  Color(0xFF20384B),
                        fontFamily: "Sans",
                        weight: FontWeight.w700,
                      ),
                    ],
                  ),
                ),
              ),
              4.pw,
            ],
          ),
          16.ph,
          const CustomText(
            "No invoices available",
            fontsize: 16,
            color: AppColors.primaryColor,
            fontFamily: "Sans",
            weight: FontWeight.w700,
          ),
          16.ph,

        ]);
  }
}
