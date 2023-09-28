import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/text_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompleteRegisterScreen extends StatefulWidget {
   CompleteRegisterScreen({Key? key}) : super(key: key);

  @override
  State<CompleteRegisterScreen> createState() => _CompleteRegisterScreenState();
}

class _CompleteRegisterScreenState extends State<CompleteRegisterScreen> {
  bool clientChoose = true;
  bool freelanceChoose =false;
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
            TextWidget("Join as a client or freelancer",
                fontSize: 24, color: Color(0xFF000000)),
            32.ph,
           Row(
             children: [
               Expanded(
                 child: GestureDetector(
                   onTap: (){


                     setState(() {
                       clientChoose = true;
                       freelanceChoose = false;
                     });
                   },
                   child: Card(
                     child: Container(
                       constraints: const BoxConstraints(
                         maxHeight: 150,
                         minHeight: 100
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.center,

                           children: [
                         SvgPicture.asset(
                           "assets/icons/worker.svg",
                           color: clientChoose&&freelanceChoose==false ? selectColor : Colors.grey,

                         ),
                         16.ph,
                         TextWidget(
                           "I’m a client, hiring for a project",textAlign: TextAlign.center,
                         )
                       ]),
                     ),
                   ),
                 ),
               ),
               8.pw,
               Expanded(
                 child: GestureDetector(
                   onTap: (){

                     setState(() {
                       freelanceChoose = true;
                       clientChoose = false;

                     });
                   },
                   child: Card(
                     child: Container(
                       constraints: const BoxConstraints(
                           maxHeight: 150,
                           minHeight: 100
                       ),
                       child: Column(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.center,

                           children: [
                             SvgPicture.asset(
                               "assets/icons/cilent.svg",
                               color: clientChoose==false&&freelanceChoose==true ? selectColor : Colors.grey,

                             ),
                             16.ph,
                             TextWidget(
                               "I’m an freelancer,looking for work",textAlign: TextAlign.center,
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
              onTap: (){},
              title: clientChoose==false&&freelanceChoose==true ? "Join as a freelancer" : "Join as a client",


            ),
            16.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget("Already have an account?", color: Color(0xFFCBD1CE)),
                TextButton(
                  onPressed: (){
                    Navigator.pushNamedAndRemoveUntil(context, Routes.AuthScreen, (route) => false);
                  },
                  child: TextWidget(" Log in", color: Color(0xFF057EE7)),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
