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
          selectedItems: cubit.postAJobRequest.qualifications
              ?.map((e) => CountryCode(name: e))
              .toList(growable: false),
          items: () => elements,
          onChange: (s) {
            cubit.postAJobRequest.qualifications =
                s.map((e) => e.name.toString()).toList(growable: false);
          },
          itemAsString: (p0) => p0.code?.tr() ?? '',
        ),

        // Row(
        //   children: [
        //     Expanded(
        //       child: DropdownButtonHideUnderline(
        //         child: DropdownButton2<String>(
        //           isExpanded: true,

        //           hint: CustomText(
        //             'Select Country',
        //             fontsize: 14,
        //             color: AppColors.font,
        //             fontFamily: "Sans",
        //             weight: FontWeight.w500,
        //           ),
        //           items: items.map((item) {
        //             return DropdownMenuItem(
        //               value: item,
        //               //disable default onTap to avoid closing menu when selecting an item
        //               enabled: false,

        //               child: StatefulBuilder(
        //                 builder: (context, menuSetState) {
        //                   final isSelected = selectedItems.contains(item);
        //                   return InkWell(
        //                     onTap: () {
        //                       isSelected
        //                           ? selectedItems.remove(item)
        //                           : selectedItems.add(item);
        //                       //This rebuilds the StatefulWidget to update the button's text
        //                       setState(() {});
        //                       //This rebuilds the dropdownMenu Widget to update the check mark
        //                       menuSetState(() {});
        //                     },
        //                     child: Container(
        //                       height: double.infinity,
        //                       padding:
        //                           const EdgeInsets.symmetric(horizontal: 16.0),
        //                       child: Row(
        //                         children: [
        //                           if (isSelected)
        //                             const Icon(Icons.check_box_outlined)
        //                           else
        //                             const Icon(Icons.check_box_outline_blank),
        //                           const SizedBox(width: 16),
        //                           Expanded(
        //                             child: Text(
        //                               item,
        //                               style: const TextStyle(
        //                                 fontSize: 14,
        //                               ),
        //                             ),
        //                           ),
        //                         ],
        //                       ),
        //                     ),
        //                   );
        //                 },
        //               ),
        //             );
        //           }).toList(),
        //           //Use last selected item as the current value so if we've limited menu height, it scroll to last item.
        //           value: selectedItems.isEmpty ? null : selectedItems.last,
        //           onChanged: (value) {},
        //           selectedItemBuilder: (context) {
        //             return items.map(
        //               (item) {
        //                 return Container(
        //                   alignment: AlignmentDirectional.center,
        //                   child: Text(
        //                     selectedItems.join(', '),
        //                     style: const TextStyle(
        //                       fontSize: 14,
        //                       overflow: TextOverflow.ellipsis,
        //                     ),
        //                     maxLines: 1,
        //                   ),
        //                 );
        //               },
        //             ).toList();
        //           },
        //           buttonStyleData: const ButtonStyleData(
        //             padding: EdgeInsets.only(left: 16, right: 8),
        //             height: 40,
        //             width: 140,
        //           ),
        //           menuItemStyleData: const MenuItemStyleData(
        //             height: 40,
        //             padding: EdgeInsets.zero,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
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
