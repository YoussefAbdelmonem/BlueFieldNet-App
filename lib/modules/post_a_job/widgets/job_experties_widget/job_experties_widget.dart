import 'package:bluefieldnet/core/Router/Router.dart';
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/post_a_job/widgets/widgets/custome_row_defination.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../../../../shared/widgets/multi_choise_dropdown.dart';
import '../../cubit/cubit.dart';
import '../../domain/model/post_a_job_model.dart';

class JobExpertiseWidget extends StatefulWidget {
  const JobExpertiseWidget({Key? key}) : super(key: key);

  @override
  State<JobExpertiseWidget> createState() => _JobExpertiseWidgetState();
}

class _JobExpertiseWidgetState extends State<JobExpertiseWidget> {
  // final List<String> items = [
  //   'Item1',
  //   'Item2',
  //   'Item3',
  //   'Item4',
  // ];
  // List<String> selectedItems = [];
  @override
  Widget build(BuildContext context) {
    final cubit = PostAJobCubit.get(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          DefinitionRow(
            title: "Expertise",
          ).SliverBox,
          16.ph.SliverBox,
          Container(
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
                        child: MultiSelectDropDown<Skills>(
                          items: () => cubit.postJobData?.skills ?? [],
                          onChange: (s) {
                            cubit.postAJobRequest.skill_id = s
                                .map((e) => e.id.toString())
                                .toList(growable: false);
                          },
                          itemAsString: (p0) => p0.title ?? '',
                        ),
                        /*      child: DropdownButtonHideUnderline(
                          child: DropdownButton2<Skills>(
                            // isExpanded: true,

                            hint: CustomText(
                              'Select Items',
                              fontsize: 14,
                              color: AppColors.font,
                              fontFamily: "Sans",
                              weight: FontWeight.w500,
                            ),
                            items: cubit.postJobData?.skills?.map((item) {
                              return DropdownMenuItem(
                                value: item,
                                //disable default onTap to avoid closing menu when selecting an item
                                enabled: false,

                                child: StatefulBuilder(
                                  builder: (context, menuSetState) {
                                    final isSelected = cubit
                                        .postAJobRequest.skill_id
                                        ?.contains(item.id.toString());
                                    return InkWell(
                                      onTap: () {
                                        isSelected == true
                                            ? cubit.postAJobRequest.skill_id
                                                ?.remove(item.id.toString())
                                            : cubit.postAJobRequest.skill_id
                                                ?.add(item.id.toString());
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
                                            if (isSelected == true)
                                              const Icon(
                                                  Icons.check_box_outlined)
                                            else
                                              const Icon(Icons
                                                  .check_box_outline_blank),
                                            const SizedBox(width: 16),
                                            Expanded(
                                              child: Text(
                                                item.title ?? '',
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
                            value: cubit.postJobData?.skills?.isEmpty == true
                                ? null
                                : cubit.postJobData?.skills?.last,
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
                      ),
                    ],
                  ),
                  64.ph,
                  64.ph,
                  Row(children: [
                    ButtonWidget(
                      width: 150,
                      height: 40,
                      onTap: () {
                        Navigator.pushNamed(
                            context, Routes.JobVisibilityWidget);
                      },
                      title: "Next",
                      buttonColor: AppColors.buttonColor,
                    ),
                    16.pw,
                    ButtonWidget(
                      width: 150,
                      height: 40,
                      borderColor: AppColors.buttonBorderColor,
                      withBorder: true,
                      buttonColor: Colors.white,
                      textColor: AppColors.buttonBorderColor,
                      title: "Cancel",
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ]),
                  32.ph
                ],
              ),
            ),
          ).SliverBox,
        ],
      ),
    );
  }
}
