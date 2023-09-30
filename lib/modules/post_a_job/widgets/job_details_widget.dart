import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/dropdown.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
enum Item { one, two, three }
class JobDetailsWidget extends StatefulWidget {
  const JobDetailsWidget({Key? key}) : super(key: key);

  @override
  State<JobDetailsWidget> createState() => _JobDetailsWidgetState();
}

class _JobDetailsWidgetState extends State<JobDetailsWidget> {


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
    return  Column(
      children: [
        Container(
          width: 500,
          height: 48,
          padding:
          const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          decoration: ShapeDecoration(
            color: Color(0xFF20384B),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(
                'Details',
                fontsize: 16,
                color: AppColors.white,
                fontFamily: "Sans",
                weight: FontWeight.w500,
              ),
              SvgPicture.asset("assets/icons/done.svg"),
            ],
          ),
        ),
        16.ph,
        Container(
          height: MediaQuery.of(context).size.height /1.4,
          width: MediaQuery.of(context).size.width,
          color: AppColors.whiteBackground,
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  'What type of project do you have?',
                  fontsize: 20,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),

                16.ph,
             Row(
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
                           side: BorderSide(width: 1, color: Color(0xFF057EE7)),
                           borderRadius: BorderRadius.circular(16),
                         ),
                       ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/icons/time.svg",color: getIconColor(Item.one),),
                            8.ph,
                             CustomText(
                              'One-time project',
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
                           side: BorderSide(width: 1, color: Color(0xFF057EE7)),
                           borderRadius: BorderRadius.circular(16),
                         ),
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           SvgPicture.asset("assets/icons/ongoing.svg",color: getIconColor(Item.two),),
                           8.ph,
                           CustomText(
                             'Ongoing project',
                             fontsize: 10,
                             color: getTextColor(Item.two),
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
                           side: BorderSide(width: 1, color: Color(0xFF057EE7)),
                           borderRadius: BorderRadius.circular(16),
                         ),
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           SvgPicture.asset("assets/icons/complex.svg",color:  getIconColor(Item.three),),
                           8.ph,
                           CustomText(
                             'Complex projec',
                             fontsize: 10,
                             color: getTextColor(Item.three),
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
               ],
             ),
                16.ph,
                const CustomText(
                  'Screening Questions (optional)',
                  fontsize: 14,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                16.ph,
                ListView.builder(
                  itemBuilder: (context, index){
                  return Row(
                    children: [
                      Checkbox(value: checkVal, onChanged: (bool ?v){

                        setState(() {
                          checkVal = v!;
                        });
                      }),
                      8.pw,
                      const CustomText(
                        'Do you have any questions about the job description?',
                        fontsize: 10,
                        color: AppColors.font,
                        fontFamily: "Sans",
                        weight: FontWeight.w500,
                      ),

                    ]
                  );
                },
                  itemCount: 4,
                  shrinkWrap: true,

                ),
                16.ph,
                const CustomText(
                  'Cover Letter',
                  fontsize: 14,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                16.ph,
                Row(
                    children: [
                      Checkbox(value: checkVal, onChanged: (bool ?v){

                        setState(() {
                          checkVal = v!;
                        });
                      }),
                      8.pw,
                      const CustomText(
                        'Yes, require a cover letter',
                        fontsize: 16,
                        color: AppColors.checkBoxTextColor,
                        fontFamily: "Roboto",
                        weight: FontWeight.w500,
                      ),

                    ]
                ),
                32.ph,
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonWidget(
                        width: 150,
                        height: 40,
                        borderColor: AppColors.buttonBorderColor,
                        withBorder: true,
                        buttonColor: Colors.white,
                        textColor:AppColors.buttonBorderColor ,
                        title: "Previous",
                      ),
                      ButtonWidget(
                        width: 150,
                        height: 40,
                        onTap: (){},
                        title: "Next",
                        buttonColor:AppColors. buttonColor,
                      ),


                    ]
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
