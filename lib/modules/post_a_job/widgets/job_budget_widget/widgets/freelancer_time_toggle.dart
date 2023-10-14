import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../cubit/cubit.dart';

enum TimeItem { one, two, three }

class BudgetFreelancerTimeToggleWidget extends StatefulWidget {
  const BudgetFreelancerTimeToggleWidget({super.key});

  @override
  State<BudgetFreelancerTimeToggleWidget> createState() =>
      _BudgetFreelancerTimeToggleWidgetState();
}

class _BudgetFreelancerTimeToggleWidgetState
    extends State<BudgetFreelancerTimeToggleWidget> {
  TimeItem selectedTimeItem = TimeItem.one;
  void selectTimeItem(TimeItem item) {
    setState(() {
      selectedTimeItem = item;
    });
  }

  Color getTimeTextColor(TimeItem item) {
    return selectedTimeItem == item ? Colors.blue : Colors.black;
  }

  Color getTimeIconColor(TimeItem item) {
    return selectedTimeItem == item ? AppColors.primaryColor : AppColors.grey;
  }

  @override
  Widget build(BuildContext context) {
    final cubit = PostAJobCubit.get(context);
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              cubit.postAJobRequest.expected_hour_per_week = "1";
              selectedTimeItem = TimeItem.one;
              setState(() {});
            },
            child: Container(
              height: 120,
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
                    "assets/icons/project_time.svg",
                    color: getTimeIconColor(TimeItem.one),
                  ),
                  8.ph,
                  CustomText(
                    'I don\'t know yet',
                    fontsize: 10,
                    color: getTimeTextColor(TimeItem.one),
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          ),
        ),
        8.pw,
        Expanded(
          child: GestureDetector(
            onTap: () {
              cubit.postAJobRequest.expected_hour_per_week = "2";
              selectedTimeItem = TimeItem.two;
              setState(() {});
            },
            child: Container(
              height: 120,
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
                    "assets/icons/project_time.svg",
                    color: getTimeIconColor(TimeItem.two),
                  ),
                  8.ph,
                  CustomText(
                    'More than 30 hrs/week',
                    fontsize: 10,
                    color: getTimeTextColor(TimeItem.two),
                    align: TextAlign.center,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          ),
        ),
        8.pw,
        Expanded(
          child: GestureDetector(
            onTap: () {
              cubit.postAJobRequest.expected_hour_per_week = "3";
              selectedTimeItem = TimeItem.three;
              setState(() {});
            },
            child: Container(
              height: 120,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: ShapeDecoration(
                color: const Color(0xFFF5F5F5),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFF057EE7)),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/project_time.svg",
                    color: getTimeIconColor(TimeItem.three),
                  ),
                  8.ph,
                  CustomText(
                    'Less than 30 hrs/week',
                    fontsize: 10,
                    align: TextAlign.center,
                    color: getTimeTextColor(TimeItem.three),
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
