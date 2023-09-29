import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/dropdown.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../shared/widgets/customtext.dart';
import '../cubit/cubit.dart';

class PostAJobScreen extends StatefulWidget {
  const PostAJobScreen({Key? key}) : super(key: key);

  @override
  State<PostAJobScreen> createState() => _PostAJobScreenState();
}

class _PostAJobScreenState extends State<PostAJobScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PostAJobCubit(),
        child: Scaffold(
            body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  16.ph,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://media.cnn.com/api/v1/images/stellar/prod/230621042149-01-cristiano-ronaldo-euro-200-apps-062023-restricted.jpg?c=16x9&q=h_720,w_1280,c_fill")),
                      Spacer(),
                      CustomText(
                        "Post A Job",
                        color: AppColors.font,
                        fontFamily: "Sans",
                        fontsize: 16,
                        weight: FontWeight.w600,
                      ),
                      Spacer(),
                    ],
                  ),
                  16.ph,
                  TextFormFieldWidget(
                    prefixIcon: SvgPicture.asset(
                      "assets/icons/search.svg",
                      alignment: Alignment.center,
                      fit: BoxFit.none,
                    ),
                    hintText: "Search for job",
                  ),
                  16.ph,
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
                          'Title',
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
                    height: MediaQuery.of(context).size.height /1.6,
                    width: MediaQuery.of(context).size.width,
                    color: AppColors.whiteBackground,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            'Title and Category',
                            fontsize: 20,
                            color: AppColors.font,
                            fontFamily: "Sans",
                            weight: FontWeight.w500,
                          ),
                          16.ph,
                          TextFormFieldWidget(
                            hintText: "Enter the name of your job post",
                          ),
                          8.ph,
                          CustomText(
                            'Enter the name of your job post',
                            fontsize: 16,
                            color: AppColors.font,
                            fontFamily: "Sans",
                            weight: FontWeight.w500,
                          ),
                          8.ph,
                          ListView.builder(
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 4),
                                child: Row(children: [
                                  Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color: AppColors.dotColor,
                                        borderRadius: BorderRadius.circular(20)),
                                  ),
                                  8.pw,
                                  CustomText(
                                    'Developer needed for creating a responsive WordPress Theme',
                                    fontsize: 12,
                                    color: AppColors.dotColor,
                                    fontFamily: "Roboto",
                                    weight: FontWeight.w500,
                                  ),
                                ]),
                              );
                            },
                            itemCount: 3,
                            shrinkWrap: true,
                          ),
                          8.ph,
                          CustomText(
                            'Enter the name of your job post',
                            fontsize: 16,
                            color: AppColors.font,
                            fontFamily: "Sans",
                            weight: FontWeight.w500,
                          ),
                          8.ph,
                          CustomText(
                            'Let\'s categorize your job, which helps us personalize your job details and match your job to relevant freelancers and agencies. Here are some suggestions based on your job title',
                            fontsize: 14,
                            color: AppColors.dotColor,
                            fontFamily: "Roboto",
                            weight: FontWeight.w400,
                          ),
                          16.ph,
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: DropDownItem(
                                  onChanged: (e) {},
                                  options: [
                                    "Full Time",
                                    "Part Time",
                                    "Freelance",
                                  ],
                                  hint: "choose category",

                                )
                              ),
                              8.pw,
                              Expanded(
                                child: DropDownItem(
                                  onChanged: (e) {},
                                  options: [
                                    "Full Time",
                                    "Part Time",
                                    "Freelance",
                                  ],
                                  hint: "choose Subcategory",

                                )
                              ),
                            ]
                          ),
                          16.ph,
                          Row(
                            children: [
                              ButtonWidget(
                                width: 150,
                                height: 40,
                                 onTap: (){},
                                title: "Next",
                                buttonColor:AppColors. buttonColor,
                              ),
                              16.pw,
                              ButtonWidget(
                                width: 150,
                                height: 40,
                                borderColor: AppColors.buttonBorderColor,
                                withBorder: true,
                                buttonColor: Colors.white,
                                textColor:AppColors.buttonBorderColor ,
                                title: "Cancel",
                              ),
                            ]
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )));
  }
}
