import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/auth/cubit/cubit.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:bluefieldnet/shared/widgets/text_widget.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    16.ph,
                    TextWidget(
                      "Sign Up".tr(),
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                    ),
                    16.ph,
                    TextWidget(
                      "Welcome please sign up".tr(),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF636363),
                    ),
                    16.ph,
                    TextFormFieldWidget(
                      onTap: () {},
                      label: "name".tr(),
                      type: TextInputType.name,
                    ),
                    16.ph,
                    TextFormFieldWidget(
                      onTap: () {},
                      label: "email".tr(),
                      type: TextInputType.emailAddress,
                    ),
                    16.ph,
                    TextFormFieldWidget(
                      onTap: () {},
                      prefixIcon: CountryCodePicker(
                        onChanged: (e) {},
                      ),
                      prefixWidget: const VerticalDivider(
                        thickness: 1,
                        color: Colors.black,
                        width: 3,
                        indent: 3,
                      ),
                      hintText: "Phone Number".tr(),
                      type: TextInputType.phone,
                    ),
                    16.ph,
                    TextFormFieldWidget(
                      onTap: () {},
                      label: "password".tr(),
                      type: TextInputType.visiblePassword,
                      password: true,
                    ),
                    16.ph,
                    TextFormFieldWidget(
                      onTap: () {},
                      label: "Re-Type password".tr(),
                      type: TextInputType.visiblePassword,
                      password: true,
                    ),
                    16.ph,
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Checkbox(
                        value: checkValue,
                        onChanged: (bool? value) {
                          setState(() {
                            checkValue = value!;
                            print(value);
                          });
                        },
                        activeColor: Color(0xFF057EE7),
                      ),
                      TextWidget(
                        "I agree to the ".tr(),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: TextWidget(
                          "Terms of use".tr(),
                          color: Color(0xFF057EE7),
                        ),
                      )
                    ]),
                    16.ph,
                    ButtonWidget(
                      width: double.infinity,
                      radius: 8,
                      onTap: () {},
                      title: "Sign Up".tr(),
                      borderColor: Color(0xFF057EE7),
                    ),
                    16.ph,
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget("Already have an account?"),
                        TextButtonWidget(
                          function: () {
                            Navigator.pop(context);
                          },
                          text: "Log in",
                          color:Color(0xFF057EE7) ,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
