import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/helpers/alerts.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/core/utiles/utiles.dart';
import 'package:bluefieldnet/core/utiles/validations.dart';
import 'package:bluefieldnet/modules/auth/cubit/cubit.dart';
import 'package:bluefieldnet/modules/auth/cubit/states.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/widgets/customtext.dart';
import '../../domain/request/auth_request.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool checkValue = false;
  AuthRequest authRequestModel = AuthRequest();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        body: BlocConsumer<AuthCubit, AuthStates>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            final cubit = AuthCubit.get(context);
            return SafeArea(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          16.ph,
                          CustomText(
                            "Sign Up".tr(),
                            fontsize: 32,
                            weight: FontWeight.w500,
                            fontFamily: "Sans",
                            color: Colors.black,
                          ),
                          16.ph,
                          CustomText(
                            "Welcome please sign up".tr(),
                            fontsize: 16,
                            weight: FontWeight.w500,
                            color: const Color(0xFF636363),
                          ),
                          38.ph,
                          TextFormFieldWidget(
                            onSaved: (S) {
                              authRequestModel.name = S;
                            },
                            validator: Validation.defaultValidation,
                            label: "name".tr(),
                            type: TextInputType.name,
                          ),
                          16.ph,
                          TextFormFieldWidget(
                            onSaved: (S) {
                              authRequestModel.email = S;
                            },
                            validator: Validation.emailValidation,
                            label: "email".tr(),
                            type: TextInputType.emailAddress,
                          ),
                          16.ph,
                          TextFormFieldWidget(
                            onSaved: (S) {
                              authRequestModel.phone = S;
                            },
                            validator: Validation.defaultValidation,
                            prefixIcon: CountryCodePicker(
                              onChanged: (e) {
                                authRequestModel.code = e.dialCode;
                              },
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
                            onSaved: (S) {
                              authRequestModel.password = S;
                            },
                            onChanged: (value) {
                              authRequestModel.password = value;
                            },
                            validator: Validation.validatePassword,
                            label: "password".tr(),
                            type: TextInputType.visiblePassword,
                            password: true,
                          ),
                          16.ph,
                          TextFormFieldWidget(
                            onSaved: (S) {
                              authRequestModel.password_confirmation = S;
                            },
                            validator: (S) {
                              return Validation.confirmPasswordValidation(
                                  S, authRequestModel.password ?? '');
                            },
                            label: "Re-Type password".tr(),
                            type: TextInputType.visiblePassword,
                            password: true,
                          ),
                          16.ph,
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Transform.scale(
                                  scale: .8,
                                  child: Checkbox(
                                    value: checkValue,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        authRequestModel.agree =
                                            value == true ? "1" : "0";
                                        checkValue = value!;
                                      });
                                    },
                                    activeColor: const Color(0xFF057EE7),
                                  ),
                                ),
                                CustomText(
                                  "I agree to the ".tr(),
                                  color: const Color(0xff979797),
                                  fontsize: 10,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: CustomText(
                                    "Terms of use".tr(),
                                    color: const Color(0xFF057EE7),
                                    fontsize: 10,
                                  ),
                                )
                              ]),
                          16.ph,
                          ButtonWidget(
                            width: double.infinity,
                            radius: 8,
                            onTap: () async {
                              if (_formKey.currentState!.validate()) {
                                if (checkValue == false) {
                                  Alerts.snack(
                                      text: "Please agree to the terms of use",
                                      state: SnackState.failed);
                                  return;
                                } else {
                                  _formKey.currentState!.save();

                                  Navigator.pushNamed(
                                      context, Routes.completeRegister,
                                      arguments: (S) async {
                                    authRequestModel.type = S;
                                    final res = await cubit.register(
                                        registerRequestModel: authRequestModel);
                                    if (res == true) {
                                      Navigator.pushNamedAndRemoveUntil(
                                          context,
                                          Routes.layoutScreen,
                                          (route) => false);
                                    }
                                  });
                                }
                              }
                            },
                            title: "Sign Up".tr(),
                            borderColor: Color(0xFF057EE7),
                            // fontFamily: "Sans",
                          ),
                          24.ph,
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CustomText(
                                "Already have an account?",
                                color: Color(0xff979797),
                                fontsize: 14,
                              ),
                              6.pw,
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const CustomText(
                                  "Log in",
                                  color: Color(0xFF057EE7),
                                  fontsize: 14,
                                  weight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
