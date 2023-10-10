import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/widgets/jobs_defination_row.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationsFindJobWidget extends StatelessWidget {
  const NotificationsFindJobWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              JobDefinitionRow(
                  title: "Notifications", image: "assets/icons/noti.svg"),
              16.ph,
              const CustomText(
                "Today",
                fontsize: 24,
                color: Color(0xFF20384B),
                fontFamily: "Sans",
                weight: FontWeight.w700,
              ),
              16.ph,
              ListView.builder(
                itemBuilder: (_, index) {
                  return  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8
                    ),
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset("assets/icons/x.svg",color: Colors.black,),
                          16.ph,
                          Row(
                            children: [
                              CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://media.cnn.com/api/v1/images/stellar/prod/230621042149-01-cristiano-ronaldo-euro-200-apps-062023-restricted.jpg?c=16x9&q=h_720,w_1280,c_fill")),
                              10.pw,

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    constraints: BoxConstraints(
                                        maxWidth: context.width * 0.73
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomText(
                                          "Cristiano Ronaldo",
                                          fontsize: 14,
                                          color: Color(0xFF20384B),
                                          fontFamily: "Sans",
                                          weight: FontWeight.w500,
                                        ),

                                        CustomText(
                                          "10:45 AM",
                                          fontsize: 10,
                                          color: Color(0xFF5E84A3),
                                          fontFamily: "Roboto",
                                          weight: FontWeight.w400,
                                        ),
                                      ],
                                    ),
                                  ),
                                  8.ph,
                                  const CustomText(
                                    "You received a job proposal “tax expert” from Ahmed Mahmoud ",
                                    fontsize: 9,
                                    color: Color(0xFF334D64),
                                    fontFamily: "Roboto",
                                    weight: FontWeight.w400,
                                  ),
                                ],
                              )

                            ],
                          ),

                          8.ph,
                        ],
                      ),
                    ),
                  );
                },
                itemCount: 5,
                physics: NeverScrollableScrollPhysics(),

                shrinkWrap: true,
              ),
              32.ph,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                ButtonWidget(
                  width: 150,
                  height: 40,
                  borderColor: AppColors.buttonBorderColor,
                  withBorder: true,
                  buttonColor: Colors.white,
                  textColor: AppColors.buttonBorderColor,
                  title: "Previous",
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ButtonWidget(
                  width: 150,
                  height: 40,
                  onTap: () {
                    Navigator.pushNamed(context, Routes.InboxFindJobWidget);
                  },
                  title: "Next",
                  buttonColor: AppColors.buttonColor,
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
