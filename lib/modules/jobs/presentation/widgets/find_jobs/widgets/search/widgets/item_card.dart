import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCardWidget extends StatelessWidget {
  const ItemCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  "tax export",
                  fontFamily: "Sans",
                  fontsize: 16,
                  color: AppColors.font,
                ),
                Spacer(),
                CustomText(
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
              "created By : Anas Nafie _Relationship Advisor ",
              color: AppColors.primary,
              fontFamily: "Sans",
              fontsize: 12,
              weight: FontWeight.w400,
            ),
            8.ph,
            const CustomText(
              "Hourly - Expert -Est. time i don't know yet,\$15.000_posted August 2023 ",
              color: AppColors.subTitleBlackColor,
              fontFamily: "Sans",
              fontsize: 8,
              weight: FontWeight.w400,
            ),
            8.ph,
            const CustomText(
              "hghaghahahahahghgh",
              color: AppColors.black,
              fontFamily: "Sans",
              fontsize: 8,
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
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: AppColors.primaryColor,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                16.pw,
                CustomText(
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
    );
  }
}
