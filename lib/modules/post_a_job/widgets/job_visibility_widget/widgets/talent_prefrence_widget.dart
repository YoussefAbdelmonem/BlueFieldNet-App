import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/core/utiles/validations.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/job_visibility_widget/widgets/visability_utils.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../../../shared/widgets/autocomplate.dart';
import '../../../../../shared/widgets/multi_choise_dropdown.dart';
import '../../../cubit/cubit.dart';

class TalentPreferenceWidget extends StatefulWidget {
  const TalentPreferenceWidget({super.key});

  @override
  State<TalentPreferenceWidget> createState() => _TalentPreferenceWidgetState();
}

class _TalentPreferenceWidgetState extends State<TalentPreferenceWidget> {
  List<CountryCode> elements =
      (jsonList.map((json) => CountryCode.fromJson(json)).toList());

  @override
  void initState() {
    super.initState();
    //  elements = elements.map((element) => element.localize()).toList();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'no_preference',
      'independent',
      'agency',
    ];
    List<String> selectedItems = [];
    final cubit = PostAJobCubit.get(context);
    // elements = elements.map((element) => element.localize()).toList();
    return Column(
      children: [
        MultiSelectDropDown<CountryCode>(
          label: "",
          selectedItems: cubit.postAJobRequest.countries
          /*   ?.map((e) => CountryCode(name: e))
              .toList(growable: false) */
          ,
          items: () => elements,
          onChange: (s) {
            cubit.postAJobRequest.countries = s;
          },
          itemAsString: (p0) => p0.code?.tr() ?? "",
        ),
        16.ph,
        CustomAutoCompleteTextField<String>(
          hint: "Talent type",
          onChanged: (s) {
            cubit.postAJobRequest.talent_type = s;
          },
          localData: true,
          validator: Validation.defaultValidation,
          function: (p0) {
            return items;
          },
          itemAsString: (p0) {
            return p0.replaceAll("_", " ").toCapitalized();
          },
        ),
      ],
    );
  }
}
