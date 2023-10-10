import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/text_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/widgets/customtext.dart';

class CompleteRegisterScreen extends StatefulWidget {
  CompleteRegisterScreen({Key? key, required this.onPressed}) : super(key: key);
  final void Function(String s)? onPressed;
  @override
  State<CompleteRegisterScreen> createState() => _CompleteRegisterScreenState();
}

class _CompleteRegisterScreenState extends State<CompleteRegisterScreen> {
  bool clientChoose = true;
  bool freelanceChoose = false;
  Color selectColor = Color(0xFF057EE7);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            16.ph,
            CustomText("Join as a client or freelancer",
                fontFamily: 'Sans', fontsize: 24, color: Color(0xFF000000)),
            32.ph,
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        clientChoose = true;
                        freelanceChoose = false;
                      });
                    },
                    child: Card(
                      child: Container(
                        constraints: const BoxConstraints(
                            maxHeight: 150, minHeight: 100),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/worker.svg",
                                color: clientChoose && freelanceChoose == false
                                    ? selectColor
                                    : Colors.grey,
                              ),
                              16.ph,
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: CustomText(
                                  "I’m a client, hiring for a project",
                                  align: TextAlign.center,
                                  weight: FontWeight.w500,
                                  fontFamily: "Sans",
                                  color: clientChoose == true
                                      ? selectColor
                                      : Colors.grey,
                                ),
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
                8.pw,
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        freelanceChoose = true;
                        clientChoose = false;
                      });
                    },
                    child: Card(
                      child: Container(
                        constraints: const BoxConstraints(
                            maxHeight: 150, minHeight: 100),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/cilent.svg",
                                color: clientChoose == false &&
                                        freelanceChoose == true
                                    ? selectColor
                                    : Colors.grey,
                              ),
                              16.ph,
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: CustomText(
                                    "I’m an freelancer,looking for work",
                                    align: TextAlign.center,
                                    fontFamily: "Sans",
                                    color: freelanceChoose == true
                                        ? selectColor
                                        : Colors.grey),
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
                32.ph,
              ],
            ),
            32.ph,
            ButtonWidget(
              onTap: () {
                widget.onPressed
                    ?.call(freelanceChoose == true ? "freelancer" : "client");
              },
              fontSize: 20,
              title: freelanceChoose == true
                  ? "Join as a freelancer"
                  : "Join as a client",
              fontweight: FontWeight.w500,
            ),
            16.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  "Already have an account?",
                  color: Color(0xFFCBD1CE),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, Routes.AuthScreen, (route) => false);
                  },
                  child: CustomText(" Log in", color: Color(0xFF057EE7)),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
