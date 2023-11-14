import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/jobs/domain/model/find_jobs_model.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchItemCardWidget extends StatelessWidget {
   SearchItemCardWidget({Key? key,  this.findJobsData}) : super(key: key);

   FindJobsData ?findJobsData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8
      ),
      child: Container(
        color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.ph,
              Row(
                children: [
                  SvgPicture.asset("assets/icons/again.svg"),
                  8.pw,
                  SvgPicture.asset("assets/icons/question.svg"),
                  8.pw,
                  SvgPicture.asset("assets/icons/carbon_favorite.svg"),
                  8.pw,
                  CustomText(
                    findJobsData?.title??"",
                    fontFamily: "Sans",
                    fontsize: 16,
                    color: AppColors.font,
                  ),
                  const Spacer(),
                  const CustomText(
                    "Applied for",
                    color: AppColors.primaryColor,
                    fontsize: 14,
                    weight: FontWeight.w600,
                    fontFamily: "Sans",
                  )
                ],
              ),
              10.ph,
              CustomText(
                "created By : ${findJobsData?.username??""}",
                color: AppColors.primary,
                fontFamily: "Sans",
                fontsize: 12,
                weight: FontWeight.w400,
              ),
              8.ph,
               CustomText(
                // "Hourly - Expert -Est. time i don't know yet,\$15.000_posted August 2023 ",
                findJobsData?.budget.toString()??"",
                color: AppColors.subTitleBlackColor,
                fontFamily: "Sans",
                fontsize: 8,
                weight: FontWeight.w400,
              ),
              8.ph,
               CustomText(
               findJobsData?.description??"",
                color: AppColors.black,
                fontFamily: "Sans",
                fontsize: 8,
                maxLine: 1,
                weight: FontWeight.w400,
              ),
              16.ph,
              ButtonWidget(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 40,
                onTap: () {},
                title: "Tax Strategies",
                fontweight: FontWeight.bold,
              ),
              16.ph,
              Row(
                children: [
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemSize: 16,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: AppColors.primaryColor,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  16.pw,
                  const CustomText(
                    "0\$+ Spent",
                    fontsize: 16,
                    weight: FontWeight.w600,
                    fontFamily: "Sans",
                  ),
                ],
              ),
              8.ph,
            ],
          ),
        ),
      ),
    );
  }
}
