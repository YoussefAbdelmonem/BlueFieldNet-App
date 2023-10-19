import 'package:bluefieldnet/core/helpers/alerts.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/profile/presentation/widgets/user_setting/widgets/password/widgets/edit_password.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordAndSecurityUserSetting extends StatelessWidget {
  const PasswordAndSecurityUserSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    CustomText(
                      "password&security",
                      color: AppColors.font,
                      weight: FontWeight.w600,
                      fontsize: 16,
                    ),

                    EditPasswordButton()
                  ],
                ),
                8.ph,
                 Row(
                  children: [
                    SvgPicture.asset("assets/icons/true_password.svg"),
                    8.pw,
                    CustomText(
                      "Password has been set \n Choose a strong, unique password that’s at least 8 characters long.",
                      color: AppColors.primaryColor,
                      weight: FontWeight.w600,
                      fontsize: 8,
                    ),

                  ],
                ),



              ],
            ),
          ),
        ),
      ],
    );
  }
}
