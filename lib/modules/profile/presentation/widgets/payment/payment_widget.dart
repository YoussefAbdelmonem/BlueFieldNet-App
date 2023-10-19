import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/widgets/custome_row_defination.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';

class PaymentProfileWidget extends StatelessWidget {
  const PaymentProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            DefinitionRow(title: "payment account",isDone: false,),
            16.ph,
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    "payment account",
                    fontsize: 16,
                    color: Color(0xFF20384B),
                    fontFamily: "Sans",
                    weight: FontWeight.w700,
                  ),
                  8.ph,
                  const CustomText(
                    "You have not set up any billing methods yet.",
                    fontsize: 12,
                    color: AppColors.primaryColor,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  10.ph,
                   CustomText(
                    "Your billing method will be charged only when your available balance from Bluefield earnings is not sufficient to pay for your monthly membership and/or Connects.",
                    fontsize: 10,
                    color: Colors.black.withOpacity(0.6),
                    fontFamily: "Sans",
                    weight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
