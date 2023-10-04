import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/dropdown.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';
class PaymentDropDownWidget extends StatelessWidget {
  const PaymentDropDownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormFieldWidget(
          hintText: "Write your Budget Allocation",
        ),
        16.ph,
        DropDownItem(
          onChanged: (e) {},
          options: [
          ],
          hint: "Number of payments",

        ),
        16.ph,
        DropDownItem(
          onChanged: (e) {},
          options: [
            "Every week",
            "Every two weeks",
            "Monthly",
          ],
          hint: "Payment Frequency",

        ),
        16.ph,
      ],
    );

  }
}
