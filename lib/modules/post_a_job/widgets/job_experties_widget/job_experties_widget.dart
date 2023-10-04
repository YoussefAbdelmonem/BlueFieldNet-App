import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/widgets/custome_row_defination.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class JobExpertiseWidget extends StatefulWidget {
  const JobExpertiseWidget({Key? key}) : super(key: key);

  @override
  State<JobExpertiseWidget> createState() => _JobExpertiseWidgetState();
}

class _JobExpertiseWidgetState extends State<JobExpertiseWidget> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  List<String> selectedItems = [];
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        DefinitionRow(
          title: "Expertise",
        ),
        16.ph,
        Container(
          height: MediaQuery.of(context).size.height /1.8,
          width: MediaQuery.of(context).size.width,
          color: AppColors.whiteBackground,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                const CustomText(
                  'What skills and expertise are most important to you job?',
                  fontsize: 16,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                16.ph,
                const CustomText(
                  'Job Skills (optional)',
                  fontsize: 16,
                  color: AppColors.font,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),


                16.ph,
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2<String>(
                          // isExpanded: true,
                          
                          hint: CustomText(
                            'Select Items',
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
                                      isSelected ? selectedItems.remove(item) : selectedItems.add(item);
                                      //This rebuilds the StatefulWidget to update the button's text
                                      setState(() {});
                                      //This rebuilds the dropdownMenu Widget to update the check mark
                                      menuSetState(() {});
                                    },
                                    child: Container(
                                      height: double.infinity,
                                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                      child: Row(
                                        children: [
                                          if (isSelected)
                                            const Icon(Icons.check_box_outlined)
                                          else
                                            const Icon(Icons.check_box_outline_blank),
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
                          isDense: true,
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
                    ),
                  ],
                ),
                64.ph,
                64.ph,

                Row(
                    children: [
                      ButtonWidget(
                        width: 150,
                        height: 40,
                        onTap: (){},
                        title: "Next",
                        buttonColor:AppColors. buttonColor,
                      ),
                      16.pw,
                      ButtonWidget(
                        width: 150,
                        height: 40,
                        borderColor: AppColors.buttonBorderColor,
                        withBorder: true,
                        buttonColor: Colors.white,
                        textColor:AppColors.buttonBorderColor ,
                        title: "Cancel",
                      ),
                    ]
                ),
                    32.ph
              ],
            ),
          ),
        ),
      ],
    );
  }
}
