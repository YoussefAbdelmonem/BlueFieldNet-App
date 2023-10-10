import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/core/utiles/utiles.dart';
import 'package:bluefieldnet/modules/auth/cubit/states.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:bluefieldnet/shared/widgets/text_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/utiles/validations.dart';
import '../../cubit/cubit.dart';
import '../../domain/request/auth_request.dart';

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

  AuthRequest authRequestModel = AuthRequest();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AuthCubit(),
        child: BlocConsumer<AuthCubit, AuthStates>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            final cubit = AuthCubit.get(context);
            return Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            16.ph,
                            CustomText(
                              "Login".tr(),
                              fontsize: 36,
                              fontFamily: "Sans",
                              weight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            16.ph,
                            CustomText(
                              "Welcome please sign in".tr(),
                              fontsize: 16,
                              weight: FontWeight.w500,
                              color: const Color(0xFF636363),
                            ),
                            38.ph,
                            TextFormFieldWidget(
                              onSaved: (s) {
                                authRequestModel.email = s;
                              },
                              label: "Email Address".tr(),
                              type: TextInputType.emailAddress,
                              validator: Validation.emailValidation,
                            ),
                            16.ph,
                            TextFormFieldWidget(
                              onSaved: (s) {
                                authRequestModel.password = s;
                              },
                              password: true,
                              label: "Password".tr(),
                              validator: Validation.validatePassword,
                            ),
                            16.ph,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButtonWidget(
                                  function: () {
                                    Navigator.pushNamed(
                                      context,
                                      Routes.ForgetPassword,
                                    );
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
                              fontSize: 20,
                              onTap: () async {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                  final res = await cubit.login(
                                      registerRequestModel: authRequestModel);
                                  if (res == true)
                                    Navigator.pushNamedAndRemoveUntil(context,
                                        Routes.layoutScreen, (route) => false);
                                }
                              },
                              title: "Login".tr(),
                            ),
                            16.ph,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  "Don't have an account?".tr(),
                                  color: Color(0xFFCBD1CE),
                                ),
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
                                  child: CustomText(
                                    "OR",
                                    weight: FontWeight.w400,
                                    fontsize: 16,
                                    color: Color(0xFF606763),
                                  ),
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
                              child: Row(children: [
                                SvgPicture.asset(
                                  "Google".svg('icons'),
                                ),
                                16.pw,
                                CustomText(
                                  "Sign in with Google".tr(),
                                  color: Color(0xFF636363),
                                  fontsize: 16,
                                  fontFamily: "Sans",
                                )
                              ]),
                            ),
                            16.ph,
                            ButtonWidget(
                              onTap: () {},
                              buttonColor: Colors.white,
                              borderColor: Colors.white,
                              child: Row(children: [
                                SvgPicture.asset(
                                  "apple".svg('icons'),
                                ),
                                16.pw,
                                CustomText(
                                  "Sign in with Apple".tr(),
                                  color: Color(0xFF636363),
                                  fontsize: 16,
                                  fontFamily: "Sans",
                                )
                              ]),
                            ),
                            16.ph,
                            ButtonWidget(
                              onTap: () {},
                              buttonColor: Colors.white,
                              borderColor: Colors.white,
                              child: Row(children: [
                                SvgPicture.asset(
                                  "facebook".svg('icons'),
                                ),
                                16.pw,
                                CustomText(
                                  "Sign in with Facebook".tr(),
                                  color: Color(0xFF636363),
                                  fontsize: 16,
                                  fontFamily: "Sans",
                                )
                              ]),
                            ),
                            16.ph,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
