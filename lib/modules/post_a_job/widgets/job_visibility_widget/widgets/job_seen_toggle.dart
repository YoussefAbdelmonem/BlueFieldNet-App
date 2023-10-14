import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../cubit/cubit.dart';

enum Item { Only_Bluefield_Talents, Invite_only }

class JobSeenToggleWidget extends StatefulWidget {
  const JobSeenToggleWidget({super.key});

  @override
  State<JobSeenToggleWidget> createState() => _JobSeenToggleWidgetState();
}

class _JobSeenToggleWidgetState extends State<JobSeenToggleWidget> {
  String selectedItem = Item.Only_Bluefield_Talents.name;
  bool checkVal = false;
  Color getTextColor(Item item) {
    return selectedItem == item.name ? Colors.blue : Colors.black;
  }

  double getTextSize(Item item) {
    return selectedItem == item.name ? 10 : 12;
  }

  Color getIconColor(String item) {
    return selectedItem == item ? AppColors.primaryColor : AppColors.grey;
  }

  void selectItem(Item item) {
    setState(() {
      selectedItem = item.name;
      print(selectedItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    final cubit = PostAJobCubit.get(context);

    return Row(
      children: [
        GestureDetector(
          onTap: () {
            cubit.postAJobRequest.visibility = Item.Only_Bluefield_Talents.name;
            selectedItem = Item.Only_Bluefield_Talents.name;
            setState(() {});
          },
          child: Container(
            width: 140,
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
                  "assets/icons/talend.svg",
                  color: getIconColor(Item.Only_Bluefield_Talents.name),
                ),
                8.ph,
                CustomText(
                  'Only Bluefield Talents',
                  fontsize: getTextSize(Item.Only_Bluefield_Talents),
                  color: getTextColor(Item.Only_Bluefield_Talents),
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                  align: TextAlign.center,
                ),
                8.ph,
                const CustomText(
                  'Only Bluefield team leaders can find this job.',
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
            cubit.postAJobRequest.visibility = Item.Invite_only.name;
            selectedItem = Item.Invite_only.name;
            setState(() {});
          },
          child: Container(
            width: 140,
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
                  "assets/icons/lock.svg",
                  color: getIconColor(Item.Invite_only.name),
                ),
                8.ph,
                CustomText(
                  'Invite-only',
                  fontsize: getTextSize(Item.Invite_only),
                  color: getTextColor(Item.Invite_only),
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                  align: TextAlign.center,
                ),
                8.ph,
                const CustomText(
                  'Only team leaders and agencies you have invited can find this job.',
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
