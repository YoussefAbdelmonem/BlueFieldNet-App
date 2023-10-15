import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';

class MyJobsOpenWidget extends StatelessWidget {
  const MyJobsOpenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          16.ph,

          Container(
            color: Colors.grey.shade200,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText(
                      'Nobody Hired Yet',
                      fontsize: 16,
                      color: AppColors.primaryColor,
                      weight: FontWeight.w500,
                    ),
                    IconButton(onPressed: (){
                      // PopupMenuButton<int>(
                      //   itemBuilder: (context) => [
                      //     // PopupMenuItem 1
                      //     PopupMenuItem(
                      //       value: 1,
                      //
                      //       // row with 2 children
                      //       child: Row(
                      //         children: [
                      //           Icon(Icons.star),
                      //           SizedBox(
                      //             width: 10,
                      //           ),
                      //           Text("Get The App")
                      //         ],
                      //       ),
                      //     ),
                      //     // PopupMenuItem 2
                      //     PopupMenuItem(
                      //       value: 2,
                      //       // row with two children
                      //       child: Row(
                      //         children: [
                      //           Icon(Icons.chrome_reader_mode),
                      //           SizedBox(
                      //             width: 10,
                      //           ),
                      //           Text("About")
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      //   offset: Offset(0, 100),
                      //   color: Colors.red,
                      //   elevation: 2,
                      //   // on selected we show the dialog box
                      //   onSelected: (value) {
                      //     // if value 1 show dialog
                      //     if (value == 1) {
                      //       // _showDialog(context);
                      //       // if value 2 show dialog
                      //     } else if (value == 2) {
                      //       // _showDialog(context);
                      //     }
                      //   },
                      // );
                    }, icon: Icon(Icons.more_horiz_outlined))
                  ],
                ),
                16.ph,
                const CustomText(
                  'Developer',
                  color: AppColors.font,
                  fontsize: 16,
                  weight: FontWeight.w500,
                ),
                8.ph,
                 CustomText(
                  'hourly - entrylevel-est.time:i dont know yet,80\$sepetember 26,2023',
                  color: Colors.black.withOpacity(0.6),
                  fontsize: 10,
                  fontFamily: "Sans",
                  weight: FontWeight.w400,
                ),
                8.ph,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  color: Colors.white,
                  child: CustomText(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it ",
                    color: Colors.black.withOpacity(0.6),
                    fontsize: 10,
                    weight: FontWeight.w400,
                  ),
                ),
                16.ph,
                 Row(
                  children: [
                    const  CustomText(
                      'budget:',
                      color: Colors.black,
                      fontsize: 14,
                      weight: FontWeight.w400,
                    ),
                    4.pw,
                    const  CustomText(
                      '\$80',
                      color: AppColors.primaryColor,
                      fontsize: 14,
                      weight: FontWeight.w400,
                    ),
                  ],
                ),
                16.ph,
                Row(
                  children: [
                    const  CustomText(
                      'tracked:',
                      color: Colors.black,
                      fontsize: 14,
                      weight: FontWeight.w400,
                    ),
                    4.pw,
                    const  CustomText(
                      '00:00:00',
                      color: AppColors.primaryColor,
                      fontsize: 14,
                      weight: FontWeight.w400,
                    ),
                  ],
                ),
                16.ph,
                Row(
                  children: [
                    const  CustomText(
                      'allocated:',
                      color: Colors.black,
                      fontsize: 14,
                      weight: FontWeight.w400,
                    ),
                    4.pw,
                    const  CustomText(
                      '0hours 0 minutes',
                      color: AppColors.primaryColor,
                      fontsize: 14,
                      weight: FontWeight.w400,
                    ),
                  ],
                ),
                16.ph
              ],
            ),
          ),
          16.ph,
          ButtonWidget(
            width: 120,
            height: 40,
            onTap: (){},
            title: "Post a Job",
            buttonColor: Color(0xFF074DB6),
            
          ),
        16.ph,
      ],
    ),
        ));
  }
}
