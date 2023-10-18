import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/core/utiles/validations.dart';
import 'package:bluefieldnet/modules/post_a_job/domain/model/check_box_models.dart';
import 'package:bluefieldnet/shared/widgets/dropdown.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';

import '../../../cubit/cubit.dart';

class PaymentDropDownWidget extends StatelessWidget {
  PaymentDropDownWidget({super.key});
  List<PriceModel> payment_frequency = [
    PriceModel(name: "Every week", id: "every_week"),
    PriceModel(name: "Every two weeks", id: "every_two_week"),
    PriceModel(name: "Monthly", id: "monthly"),
  ];
  @override
  Widget build(BuildContext context) {
    final cubit = PostAJobCubit.get(context);

    return Column(
      children: [
        TextFormFieldWidget(
          hintText: "Write your Budget Allocation",
          onSaved: (e) {
            cubit.postAJobRequest.budget = e;

          },
          validator: Validation.defaultValidation,
          type: TextInputType.number,
        ),
        16.ph,
        DropDownItem(
          onChanged: (e) {
            cubit.postAJobRequest.number_payment = e;
          },
          options: <String>[
            "1",
            "2",
            "3",
            "4",
            "5",
            "6",
            "7",
            "8",
            "9",
            "10",
          ],
          hint: "Number of payments",
          validator: Validation.defaultValidation,
        ),
        16.ph,
        DropDownItem(
          onChanged: (e) {
            cubit.postAJobRequest.payment_frequency = e;
          },
          options: payment_frequency.map((e) => e.name).toList(),
          hint: "Payment Frequency",
        ),
        16.ph,
      ],
    );
  }
}
