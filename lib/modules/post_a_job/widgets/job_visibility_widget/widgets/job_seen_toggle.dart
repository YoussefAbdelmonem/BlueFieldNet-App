import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
enum Item { one, two }

class JobSeenToggleWidget extends StatefulWidget {
  const JobSeenToggleWidget({super.key});

  @override
  State<JobSeenToggleWidget> createState() => _JobSeenToggleWidgetState();
}

class _JobSeenToggleWidgetState extends State<JobSeenToggleWidget> {
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
    return  Row(
      children: [
        GestureDetector(
          onTap: (){
            selectedItem = Item.one;
            setState(() {

            });
          },
          child: Container(
            width: 140,

            height: 120,
            padding: EdgeInsets.symmetric(
                horizontal: 12
            ),

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
                SvgPicture.asset("assets/icons/talend.svg",color: getIconColor(Item.one),),
                8.ph,
                CustomText(
                  'Only Bluefield Talents',
                  fontsize: 10,
                  color: getTextColor(Item.one),
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
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
          onTap: (){
            selectedItem = Item.two;
            setState(() {

            });
          },
          child: Container(
            width: 140,

            height: 120,
            padding: EdgeInsets.symmetric(
                horizontal: 12
            ),

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
                SvgPicture.asset("assets/icons/lock.svg",color: getIconColor(Item.two),),
                8.ph,
                CustomText(
                  'Invite-only',
                  fontsize: 10,
                  color: getTextColor(Item.two),
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
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
