import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/dropdown.dart';
import 'package:flutter/material.dart';
class TitleRowDropDownWidget extends StatelessWidget {
  const TitleRowDropDownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
              child: DropDownItem(
                onChanged: (e) {},
                options: [
                  "Full Time",
                  "Part Time",
                  "Freelance",
                ],
                hint: "choose category",

              )
          ),
          8.pw,
          Expanded(
              child: DropDownItem(
                onChanged: (e) {},
                options: [
                  "Full Time",
                  "Part Time",
                  "Freelance",
                ],
                hint: "choose Subcategory",

              )
          ),
        ]
    );

  }
}
