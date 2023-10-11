import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/core/utiles/validations.dart';
import 'package:bluefieldnet/modules/post_a_job/domain/model/post_a_job_model.dart';
import 'package:flutter/material.dart';

import '../../../../../shared/widgets/autocomplate.dart';
import '../../../cubit/cubit.dart';

class TitleRowDropDownWidget extends StatefulWidget {
  TitleRowDropDownWidget({super.key});

  @override
  State<TitleRowDropDownWidget> createState() => _TitleRowDropDownWidgetState();
}

class _TitleRowDropDownWidgetState extends State<TitleRowDropDownWidget> {
  Categories? categories;
  TextEditingController? controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final cubit = PostAJobCubit.get(context);
    return Row(mainAxisSize: MainAxisSize.min, children: [
      Expanded(
        child: CustomAutoCompleteTextField<Categories>(
          onChanged: (e) {
            categories = e;
            cubit.postAJobRequest.category_id = e.id.toString();
            controller?.clear();
          },
          localData: true,
          searchInApi: false,
          itemAsString: (p0) => p0.title ?? '',
          function: (p0) => cubit.postJobData?.categories ?? [],
          hint: "choose category",
          validator: Validation.defaultValidation,
        ),
      ),
      8.pw,
      Expanded(
        child: CustomAutoCompleteTextField<Child>(
          controller: controller,
          onChanged: (e) {
            cubit.postAJobRequest.sub_category_id = e.id.toString();
          },
          localData: true,
          searchInApi: false,
          itemAsString: (p0) => p0.title ?? '',
          function: (p0) => categories?.child ?? [],
          hint: "choose Subcategory",
          validator: Validation.defaultValidation,
        ),
      ),
    ]);
  }
}
