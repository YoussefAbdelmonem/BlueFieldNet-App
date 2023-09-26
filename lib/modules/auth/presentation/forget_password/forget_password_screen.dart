import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:bluefieldnet/shared/widgets/text_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            16.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Color(0xFF5E84A3),
                      size: 30,
                    ))
              ],
            ),
            8.ph,
            TextWidget(
              "Forgot password".tr(),
              fontSize: 32,
              color: Color(0xFF000000),
            ),
            16.ph,

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
              ),
              child: TextWidget(
                "Enter your email address below and we'll send you an email with instructions on how to change your password.".tr(),
                fontSize: 16,
                textAlign: TextAlign.center,
                maxLines: 5,
                color: Color(0xFF636363),
              ),
            ),
            16.ph,
            TextFormFieldWidget(
              onTap: () {},
              label: "Email Address".tr(),
              type: TextInputType.emailAddress,
            ),
            32.ph,
            ButtonWidget(
              width: double.infinity,
              radius: 8,
              onTap: () {},
              title: "Reset password".tr(),
              borderColor: Color(0xFF057EE7),
            ),
          ],
        ),
      ),
    ));
  }
}
