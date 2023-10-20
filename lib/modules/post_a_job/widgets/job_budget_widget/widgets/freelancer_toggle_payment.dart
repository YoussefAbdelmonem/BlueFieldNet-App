import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../cubit/cubit.dart';

enum BudgetItem { Pay_by_the_hour, Pay_a_fixed_price }

class BudgetFreelancerTogglePayment extends StatefulWidget {
  const BudgetFreelancerTogglePayment({super.key});

  @override
  State<BudgetFreelancerTogglePayment> createState() =>
      _BudgetFreelancerTogglePaymentState();
}

class _BudgetFreelancerTogglePaymentState
    extends State<BudgetFreelancerTogglePayment> {
  BudgetItem selectedBudgetItem = BudgetItem.Pay_by_the_hour;
  void selectBudgetItem(BudgetItem item) {
    setState(() {
      selectedBudgetItem = item;
    });
  }

  Color getBudgetTextColor(BudgetItem item) {
    return selectedBudgetItem == item ? Colors.blue : Colors.black;
  }

  Color getBudgetIconColor(BudgetItem item) {
    return selectedBudgetItem == item ? AppColors.primaryColor : AppColors.grey;
  }

  @override
  Widget build(BuildContext context) {
    final cubit = PostAJobCubit.get(context);

    return Row(
      children: [
        GestureDetector(
          onTap: () {
            cubit.postAJobRequest.pay_type = "1";
            cubit.postAJobRequest.payType = "pay by hour";
            setState(() {
              selectedBudgetItem = BudgetItem.Pay_by_the_hour;
            });
          },
          child: Container(
            height: 120,
            width: 140,
            padding: EdgeInsets.symmetric(horizontal: 12),
            decoration: ShapeDecoration(
              color: Color(0xFFF5F5F5),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFF057EE7)),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/time.svg",
                  color: getBudgetIconColor(BudgetItem.Pay_by_the_hour),
                ),
                8.ph,
                CustomText(
                  'Pay by the hour',
                  fontsize: 10,
                  color: getBudgetTextColor(BudgetItem.Pay_by_the_hour),
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                8.ph,
                const CustomText(
                  'Popular for ongoing projects',
                  fontsize: 10,
                  color: AppColors.font,
                  align: TextAlign.center,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ),
        8.pw,
        GestureDetector(
          onTap: () {
            cubit.postAJobRequest.pay_type = "2";
            cubit.postAJobRequest.payType = "Fixed price for project";
            selectedBudgetItem = BudgetItem.Pay_a_fixed_price;
            setState(() {});
          },
          child: Container(
            height: 120,
            width: 140,
            padding: EdgeInsets.symmetric(horizontal: 12),
            decoration: ShapeDecoration(
              color: Color(0xFFF5F5F5),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFF057EE7)),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/fixed.svg",
                  color: getBudgetIconColor(BudgetItem.Pay_a_fixed_price),
                ),
                8.ph,
                CustomText(
                  'Pay a fixed price',
                  fontsize: 10,
                  color: getBudgetTextColor(BudgetItem.Pay_a_fixed_price),
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                8.ph,
                const CustomText(
                  'Popular for one-time projects',
                  fontsize: 10,
                  color: AppColors.font,
                  align: TextAlign.center,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
