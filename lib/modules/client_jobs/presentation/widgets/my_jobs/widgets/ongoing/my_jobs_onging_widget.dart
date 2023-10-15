import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';

class MyJobsOngoingWidget extends StatelessWidget {
  const MyJobsOngoingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body:Column(
     children: [
       16.ph,
       Container(
         color: Colors.grey.shade200,
         ///هتتشال بعد كدا
         height: 100,
         padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Row(
               children: [
                 Expanded(
                   child: CustomText(
                     'ongoing projects',
                     fontsize: 16,
                     color: AppColors.primaryColor,
                   ),
                 ),
               ],
             )
           ],
         ),
       )

     ],
    )

    );
  }
}
