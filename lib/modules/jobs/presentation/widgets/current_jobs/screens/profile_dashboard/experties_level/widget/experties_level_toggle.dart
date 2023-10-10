import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
enum Item { one, two, three }

class ExpertiseLevelToggleWidget extends StatefulWidget {
  const ExpertiseLevelToggleWidget({super.key});

  @override
  State<ExpertiseLevelToggleWidget> createState() => _ExpertiseLevelToggleWidgetState();
}

class _ExpertiseLevelToggleWidgetState extends State<ExpertiseLevelToggleWidget> {
  Item selectedItem = Item.one;

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
        Expanded(

          child: GestureDetector(
            onTap: (){
              selectedItem = Item.one;
              setState(() {

              });
            },
            child: Container(

              height: 120,
              padding: EdgeInsets.symmetric(
                  horizontal: 12
              ),

              decoration: ShapeDecoration(
                color: Color(0xFFF5F5F5),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: getIconColor(Item.one)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/entry_level1.svg",color: getIconColor(Item.one),),
                  16.ph,
                  CustomText(
                    'Entry Level',
                    fontsize: 16,
                    color: getTextColor(Item.one),
                    fontFamily: "Roboto",
                    weight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ),
        ),
        8.pw,
        Expanded(

          child: GestureDetector(
            onTap: (){
              selectedItem = Item.two;
              setState(() {

              });
            },
            child: Container(

              height: 120,
              padding: EdgeInsets.symmetric(
                  horizontal: 12
              ),

              decoration: ShapeDecoration(
                color: Color(0xFFF5F5F5),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: getIconColor(Item.two)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/midlevel1.svg",color: getIconColor(Item.two),),
                  16.ph,
                  CustomText(
                    'Intermediate',
                    fontsize: 16,
                    color: getTextColor(Item.two),
                    fontFamily: "Roboto",
                    weight: FontWeight.w400,
                  ),
                  8.ph,

                ],
              ),
            ),
          ),
        ),
        8.pw,

        Expanded(

          child: GestureDetector(
            onTap: (){
              selectedItem = Item.three;
              setState(() {

              });
            },
            child: Container(

              height: 120,
              padding: EdgeInsets.symmetric(
                  horizontal: 12
              ),

              decoration: ShapeDecoration(
                color: Color(0xFFF5F5F5),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color:getIconColor(Item.three)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/expert1.svg",color:  getIconColor(Item.three),),
                  16.ph,
                  CustomText(
                    'Expert',
                    fontsize: 16,
                    color: getTextColor(Item.three),
                    fontFamily: "Roboto",
                    weight: FontWeight.w400,
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
