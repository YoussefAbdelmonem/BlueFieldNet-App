import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../cubit/cubit.dart';

enum Item { one, two, three }

class BudgetFreelancerExperienceToggleWidget extends StatefulWidget {
  const BudgetFreelancerExperienceToggleWidget({super.key});

  @override
  State<BudgetFreelancerExperienceToggleWidget> createState() =>
      _BudgetFreelancerExperienceToggleWidgetState();
}

class _BudgetFreelancerExperienceToggleWidgetState
    extends State<BudgetFreelancerExperienceToggleWidget> {
  Item selectedItem = Item.one;
  bool checkVal = false;
  Color getTextColor(Item item) {
    return selectedItem == item ? Colors.blue : Colors.black;
  }

  Color getIconColor(Item item) {
    return selectedItem == item ? AppColors.primaryColor : AppColors.grey;
  }

  void selectItem(Item item) {
    setState(() {
      selectedItem = item;
      print(selectedItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    final cubit = PostAJobCubit.get(context);
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              cubit.postAJobRequest.level_experince = "Entry";
              selectedItem = Item.one;
              setState(() {});
            },
            child: Container(
              height: 120,
              padding: EdgeInsets.symmetric(horizontal: 12),
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
                    "assets/icons/entery.svg",
                    color: getIconColor(Item.one),
                  ),
                  8.ph,
                  CustomText(
                    'Entry level',
                    fontsize: 10,
                    color: getTextColor(Item.one),
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  8.ph,
                  const CustomText(
                    'Find the right skills for a short-term need.',
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
        ),
        8.pw,
        Expanded(
          child: GestureDetector(
            onTap: () {
              cubit.postAJobRequest.level_experince = "Intermediate";

              selectedItem = Item.two;
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
                    "assets/icons/intermated.svg",
                    color: getIconColor(Item.two),
                  ),
                  8.ph,
                  CustomText(
                    'Intermediate',
                    fontsize: 10,
                    color: getTextColor(Item.two),
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
        ),
        8.pw,
        Expanded(
          child: GestureDetector(
            onTap: () {
              cubit.postAJobRequest.level_experince = "Expert";

              selectedItem = Item.three;
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
                    "assets/icons/expert.svg",
                    color: getIconColor(Item.three),
                  ),
                  8.ph,
                  CustomText(
                    'Expert',
                    fontsize: 10,
                    color: getTextColor(Item.three),
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  8.ph,
                  const CustomText(
                    'Find specialized experts and agencies for large projects.',
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
        ),
      ],
    );
  }
}
