import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/dropdown.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
enum Item { one, two, three }
enum TimeItem { one, two, three }
enum BudgetItem { one, two }

class JobBudgetWidget extends StatefulWidget {
  const JobBudgetWidget({Key? key}) : super(key: key);

  @override
  State<JobBudgetWidget> createState() => _JobBudgetWidgetState();
}

class _JobBudgetWidgetState extends State<JobBudgetWidget> {


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
  ///
  BudgetItem selectedBudgetItem = BudgetItem.one;
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
  ///time
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
                'Budget',
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
          // height: MediaQuery.of(context).size.height /0.1,
          width: MediaQuery.of(context).size.width,
          color: AppColors.whiteBackground,
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  'Budget',
                  fontsize: 20,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                16.ph,
                const CustomText(
                  'How would you like to pay your freelancer or agency?',
                  fontsize: 14,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),

                16.ph,
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){

                        setState(() {
                          selectedBudgetItem = BudgetItem.one;
                        });
                      },
                      child: Container(

                        height: 120,
                        width: 140,
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
                            SvgPicture.asset("assets/icons/time.svg",color: getBudgetIconColor(BudgetItem.one),),
                            8.ph,
                            CustomText(
                              'Pay by the hour',
                              fontsize: 10,
                              color: getBudgetTextColor(BudgetItem.one),
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
                      onTap: (){
                        selectedBudgetItem = BudgetItem.two;
                        setState(() {

                        });
                      },
                      child: Container(

                        height: 120,
                        width: 140,
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
                            SvgPicture.asset("assets/icons/fixed.svg",color: getBudgetIconColor(BudgetItem.two),),
                            8.ph,
                            CustomText(
                              'Pay a fixed price',
                              fontsize: 10,
                              color: getBudgetTextColor(BudgetItem.two),
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
                ),
                16.ph,
                const CustomText(
                  'What level of experience should your freelancer have?',
                  fontsize: 14,
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
                              SvgPicture.asset("assets/icons/entery.svg",color: getIconColor(Item.one),),
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
                              SvgPicture.asset("assets/icons/intermated.svg",color: getIconColor(Item.two),),
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
                              SvgPicture.asset("assets/icons/expert.svg",color:  getIconColor(Item.three),),
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
                ),
                16.ph,
                const CustomText(
                  'What level of experience should your freelancer have?',
                  fontsize: 14,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                16.ph,
                DropDownItem(
                  onChanged: (e) {},
                  options: [
                    "More than 6 months",
                    "3 to 6 months",
                    "1 to 3 months",
                    "Less than 1 month",
                  ],
                  hint: "choose time",

                ),
                16.ph,
                const CustomText(
                  'Do you have a time requirement/week for this project?',
                  fontsize: 14,
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
                          selectedTimeItem = TimeItem.one;
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
                              SvgPicture.asset("assets/icons/project_time.svg",color: getTimeIconColor(TimeItem.one),),
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
                        onTap: (){
                          selectedTimeItem = TimeItem.two;
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
                              SvgPicture.asset("assets/icons/project_time.svg",color: getTimeIconColor(TimeItem.two),),
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
                        onTap: (){
                          selectedTimeItem = TimeItem.three;
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
                              SvgPicture.asset("assets/icons/project_time.svg",color:  getTimeIconColor(TimeItem.three),),
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
                ),
                16.ph,
                const CustomText(
                  'What level of experience should your freelancer have?',
                  fontsize: 14,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                16.ph,
                TextFormFieldWidget(
                  hintText: "Write your Budget Allocation",
                ),
                16.ph,
                DropDownItem(
                  onChanged: (e) {},
                  options: [
                  ],
                  hint: "Number of payments",

                ),
                16.ph,
                DropDownItem(
                  onChanged: (e) {},
                  options: [
                    "Every week",
                    "Every two weeks",
                    "Monthly",
                  ],
                  hint: "Payment Frequency",

                ),
                16.ph,
                Container(
                  color: Colors.grey.shade100,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 32
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const CustomText(
                                'Payment',
                                fontsize: 14,
                                color: AppColors.font,
                                fontFamily: "Sans",
                                weight: FontWeight.w500,
                              ),
                              8.ph,
                              const CustomText(
                                '0.00',
                                fontsize: 14,
                                color: AppColors.font,
                                fontFamily: "Sans",
                                weight: FontWeight.w500,
                              ),

                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const CustomText(
                                'Amount',
                                fontsize: 14,
                                color: AppColors.font,
                                fontFamily: "Sans",
                                weight: FontWeight.w500,
                              ),
                              8.ph,
                              const CustomText(
                                '0.00',
                                fontsize: 14,
                                color: AppColors.font,
                                fontFamily: "Sans",
                                weight: FontWeight.w500,
                              ),

                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const CustomText(
                                'Date',
                                fontsize: 14,
                                color: AppColors.font,
                                fontFamily: "Sans",
                                weight: FontWeight.w500,
                              ),
                              8.ph,
                              const CustomText(
                                '20-10-2023',
                                fontsize: 14,
                                color: AppColors.font,
                                fontFamily: "Sans",
                                weight: FontWeight.w500,
                              ),

                            ],
                          ),
                        ),


                      ]
                    ),
                  ),
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
