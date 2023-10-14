import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/post_a_job/domain/model/check_box_models.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../../../shared/widgets/autocomplate.dart';
import '../../../../../shared/widgets/multi_choise_dropdown.dart';
import '../../../cubit/cubit.dart';
import '../../../domain/model/post_a_job_model.dart';

class RowAmountEarnedWidget extends StatefulWidget {
  const RowAmountEarnedWidget({super.key});

  @override
  State<RowAmountEarnedWidget> createState() => _RowAmountEarnedWidgetState();
}

class _RowAmountEarnedWidgetState extends State<RowAmountEarnedWidget> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  List<String> selectedItems = [];
  List<PriceModel> amountItems = [
    PriceModel(name: 'Any amount earned', id: '0'),
    PriceModel(name: '100+ earned', id: '100'),
    PriceModel(name: '1k+ earned', id: '1k'),
    PriceModel(name: '10k+ earned', id: '10k'),
  ];
  List<String> amountSelectedItems = [];
  @override
  Widget build(BuildContext context) {
    final cubit = PostAJobCubit.get(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: CustomText(
                      "Amount Earned",
                      fontsize: 16,
                      fontFamily: "Sans",
                      color: AppColors.font,
                    ),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: amountItems.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                        // fillColor: MaterialStateProperty.all(
                        //     Colors.white), //AppColors.primary,
                        // side: BorderSide(
                        //   color: AppColors.checkBoxTextColor,
                        // ),
                        // checkColor: AppColors.checkBoxTextColor,
                        // activeColor: AppColors.primary,
                        title: CustomText(
                          amountItems[index].name.toString(),
                          fontsize: 14,
                          fontFamily: "Sans",
                          weight: FontWeight.w500,
                        ),
                        value: cubit.postAJobRequest.earned ==
                            amountItems[index]
                                .id /* amountSelectedItems
                            .contains(amountItems[index].id.toString()) */
                        ,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (value) {
                          cubit.postAJobRequest.earned = amountItems[index].id;
                          setState(() {
                            if (value ?? false) {
                              amountSelectedItems
                                  .add(amountItems[index].id.toString());
                            } else {
                              amountSelectedItems
                                  .remove(amountItems[index].id.toString());
                            }
                          });
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: CustomText(
                      "Other Languages",
                      fontsize: 16,
                      fontFamily: "Sans",
                      color: AppColors.font,
                    ),
                  ),
                  // 16.ph,
                  MultiSelectDropDown<Languages>(
                    label: "",
                    selectedItems: cubit.postAJobRequest.languages
                        ?.map((e) => Languages(id: int.parse(e)))
                        .toList(growable: false),
                    items: () => cubit.postJobData?.languages ?? [],
                    onChange: (s) {
                      cubit.postAJobRequest.languages =
                          s.map((e) => e.id.toString()).toList(growable: false);
                    },
                    itemAsString: (p0) => p0.title ?? '',
                  ),

                  /*     DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      isExpanded: true,

                      hint: CustomText(
                        'language',
                        fontsize: 14,
                        color: AppColors.font,
                        fontFamily: "Sans",
                        weight: FontWeight.w500,
                      ),
                      items: items.map((item) {
                        return DropdownMenuItem(
                          value: item,
                          //disable default onTap to avoid closing menu when selecting an item
                          enabled: false,

                          child: StatefulBuilder(
                            builder: (context, menuSetState) {
                              final isSelected = selectedItems.contains(item);
                              return InkWell(
                                onTap: () {
                                  isSelected
                                      ? selectedItems.remove(item)
                                      : selectedItems.add(item);
                                  //This rebuilds the StatefulWidget to update the button's text
                                  setState(() {});
                                  //This rebuilds the dropdownMenu Widget to update the check mark
                                  menuSetState(() {});
                                },
                                child: Container(
                                  height: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Row(
                                    children: [
                                      if (isSelected)
                                        const Icon(Icons.check_box_outlined)
                                      else
                                        const Icon(
                                            Icons.check_box_outline_blank),
                                      const SizedBox(width: 16),
                                      Expanded(
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      }).toList(),
                      //Use last selected item as the current value so if we've limited menu height, it scroll to last item.
                      value: selectedItems.isEmpty ? null : selectedItems.last,
                      onChanged: (value) {},
                      selectedItemBuilder: (context) {
                        return items.map(
                          (item) {
                            return Container(
                              alignment: AlignmentDirectional.center,
                              child: Text(
                                selectedItems.join(', '),
                                style: const TextStyle(
                                  fontSize: 14,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                maxLines: 1,
                              ),
                            );
                          },
                        ).toList();
                      },
                      buttonStyleData: const ButtonStyleData(
                        padding: EdgeInsets.only(left: 16, right: 8),
                        height: 40,
                        width: 140,
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 40,
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                */
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
