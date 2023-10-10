import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';

class SavedFindJobTabWidget extends StatelessWidget {
  const SavedFindJobTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color:Colors.grey.shade300,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 128),
      child: Center(
        child: CustomText(
          'You haven\'t saved anyone yet ',
          fontsize: 20,
          fontFamily: "Sans",
          weight: FontWeight.w600,
          color: Color(0xFF20384B),
        ),
      )
    );
  }
}
