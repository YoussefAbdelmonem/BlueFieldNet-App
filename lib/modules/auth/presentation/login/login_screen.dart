import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:bluefieldnet/shared/widgets/text_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../cubit/cubit.dart';

///// put it in routes
///  import '../../modules/auth/presentation/login_screen.dart';
/// static const String AuthScreen = "/authScreen";

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  void initState() {
    super.initState();
  }

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
                        "Login".tr(),
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                      ),
                      16.ph,
                      TextWidget(
                        "Welcome please sign in".tr(),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF636363),
                      ),
                      16.ph,
                      TextFormFieldWidget(
                        onTap: () {},
                        label: "Email Address".tr(),
                        type: TextInputType.emailAddress,
                      ),
                      16.ph,
                      TextFormFieldWidget(
                        onTap: () {},
                        password: true,
                        label: "Password".tr(),
                      ),
                      16.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButtonWidget(
                            function: () {
                              Navigator.pushNamed(
                                  context, Routes.ForgetPassword,);
                            },
                            text: "Forgot Password?".tr(),
                            color: Color(0xFF057EE7),
                          ),
                        ],
                      ),
                      16.ph,
                      ButtonWidget(
                        width: double.infinity,
                        radius: 8,
                        onTap: () {},
                        title: "Login".tr(),
                        borderColor: Color(0xFF057EE7),
                      ),
                      16.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextWidget(
                            "Don't have an account?".tr(),
                            color: Color(0xFFCBD1CE),
                          ),
                          8.pw,
                          TextButtonWidget(
                            function: () {
                              Navigator.pushNamed(context, Routes.SignUp);
                            },
                            text: "Sign Up".tr(),
                            color: Color(0xFF057EE7),
                          )
                        ],
                      ),
                      32.ph,
                      const Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              color: Color(0xFFCBD1CE),

                              height: 10,
                              endIndent: 1,

                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            child: TextWidget(
                              "OR",
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xFFCBD1CE),),
                          ),
                          Expanded(
                            child: Divider(
                              color: Color(0xFFCBD1CE),
                              height: 10,
                              endIndent: 1,

                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                      32.ph,
                      ButtonWidget(
                        onTap: () {},
                        buttonColor: Colors.white,
                        borderColor: Colors.white,


                        child: Row(
                            children: [
                              SvgPicture.asset(
                                "Google".svg('icons')
                                ,
                              ),
                              16.pw,
                              TextWidget(
                                "Sign in with Google".tr(),
                                color: Color(0xFF636363),
                                fontSize: 16,
                              )
                            ]
                        ),
                      ),
                      16.ph,
                      ButtonWidget(
                        onTap: () {},
                        buttonColor: Colors.white,
                        borderColor: Colors.white,


                        child: Row(
                            children: [
                              SvgPicture.asset(
                                "apple".svg('icons')
                                ,
                              ),
                              16.pw,
                              TextWidget(
                                "Sign in with Apple".tr(),
                                color: Color(0xFF636363),
                                fontSize: 16,
                              )
                            ]
                        ),
                      ),
                      16.ph,
                      ButtonWidget(
                        onTap: () {},


                        buttonColor: Colors.white,
                        borderColor: Colors.white,


                        child: Row(
                            children: [
                              SvgPicture.asset(
                                "facebook".svg('icons')
                                ,
                              ),
                              16.pw,
                              TextWidget(
                                "Sign in with Facebook".tr(),
                                color: Color(0xFF636363),
                                fontSize: 16,
                              )
                            ]
                        ),
                      ),
                      16.ph,

                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
