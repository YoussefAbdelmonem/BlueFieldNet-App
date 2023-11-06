import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/jobs/presentation/widgets/current_jobs/widgets/jobs_defination_row.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';

class MyActiveJobWidget extends StatelessWidget {
  const MyActiveJobWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 8
        ),
        child: Column(
          children: [

            JobDefinitionRow(title: "My Active Jobs"),
            16.ph,
            TextFormFieldWidget(
              maxLines: 7,
              minLines: 6,
              hintText: "No Active Jobs",
              hintSize: 24,

            ),
            32.ph,
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ButtonWidget(
                    width: 150,
                    height: 40,
                    onTap: () {
                      Navigator.pushNamed(
                          context, Routes.AppliedForJobWidget,
                      );
                    },
                    title: "Next",
                    buttonColor: AppColors.buttonColor,
                  ),
                  32.pw,
                  ButtonWidget(
                    width: 150,
                    height: 40,
                    borderColor: AppColors.buttonBorderColor,
                    withBorder: true,
                    buttonColor: Colors.white,
                    textColor: AppColors.buttonBorderColor,
                    title: "Cancel",
                    // onTap: () => Navigator.pop(context),
                  ),


                ])

          ],
        ),
      ),
    );
  }
}
