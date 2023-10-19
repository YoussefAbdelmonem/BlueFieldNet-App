import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/core/utiles/utiles.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactInfoUserSettingWidget extends StatelessWidget {
  const ContactInfoUserSettingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 16
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    CustomText(
                      "Account",
                      color: AppColors.font,
                      weight: FontWeight.w600,
                      fontsize: 13,
                    ),
                    IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Edit.svg"))
                  ],
                ),
                8.ph,
                const CustomText(
                  "Name",
                  color: AppColors.primaryColor,
                  weight: FontWeight.w500,
                  fontsize: 10,
                ),
                CustomText(
                  Utils.userModel.name.toString(),
                  color: AppColors.primaryColor,
                  weight: FontWeight.w500,
                  fontsize: 10,
                ),
                8.ph,
                const CustomText(
                  "Email",
                  color: AppColors.font,
                  weight: FontWeight.w500,
                  fontsize: 10,
                ),
                CustomText(
                  Utils.userModel.email.toString(),
                  color: AppColors.font,
                  weight: FontWeight.w500,
                  fontsize: 10,
                ),
                8.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const CustomText(
                      "Close my account",
                      color: AppColors.primaryColor,
                      weight: FontWeight.w500,
                      fontsize: 10,
                    ),
                    8.pw,
                  ],
                )
              ],
            ),
          ),
        ),
        16.ph,
        Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 16
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    CustomText(
                      "Location",
                      color: AppColors.font,
                      weight: FontWeight.w600,
                      fontsize: 13,
                    ),
                    IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Edit.svg"))
                  ],
                ),
                8.ph,
                const CustomText(
                  "Address",
                  color: AppColors.font,
                  weight: FontWeight.w500,
                  fontsize: 10,
                ),
                const CustomText(
                  "Vancouver , Canada",
                  color: AppColors.font,
                  weight: FontWeight.w500,
                  fontsize: 10,
                ),
                8.ph,
                const CustomText(
                  "Phone",
                  color: AppColors.font,
                  weight: FontWeight.w500,
                  fontsize: 10,
                ),
                const CustomText(
                  "01069384747",
                  color: AppColors.font,
                  weight: FontWeight.w500,
                  fontsize: 10,
                ),

              ],
            ),
          ),
        ),
      ],
    );
  }
}
