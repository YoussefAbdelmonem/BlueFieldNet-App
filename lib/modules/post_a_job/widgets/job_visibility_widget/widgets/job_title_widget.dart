import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/modules/post_a_job/domain/model/check_box_models.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';

import '../../../cubit/cubit.dart';

class JobTitleWidget extends StatefulWidget {
  const JobTitleWidget({super.key});

  @override
  State<JobTitleWidget> createState() => _JobTitleWidgetState();
}

class _JobTitleWidgetState extends State<JobTitleWidget> {
  List<PriceModel> priceItems = [
    PriceModel(name: 'Any job success', id: '0'),
    PriceModel(name: '80% & up', id: '80'),
    PriceModel(name: '90% & up', id: '90'),
  ];
  List<String> priceSelectedItems = [];
  List<PriceModel> languageItems = [
    PriceModel(name: 'Basic', id: 'basic'),
    PriceModel(name: 'Conversational', id: 'conversational'),
    PriceModel(name: 'Fluent', id: 'fluent'),
    PriceModel(name: 'Native or Bilingual', id: 'native_bilingual'),
  ];
  List<String> languageSelectedItems = [];
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
                      "Job Type",
                      fontsize: 16,
                      fontFamily: "Sans",
                      color: AppColors.font,
                      weight: FontWeight.w500,
                    ),
                  ),
                  ListView.builder(
                    itemCount: priceItems.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                        // activeColor: AppColors.primary,
                        title: CustomText(
                          priceItems[index].name.toString(),
                          fontsize: 16,
                          weight: FontWeight.w400,
                        ),
                        value: cubit.postAJobRequest.success_score ==
                            priceItems[index].id,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (value) {
                          cubit.postAJobRequest.success_score =
                              priceItems[index].id;
                          setState(() {
                            // if (value ?? false) {
                            //   priceSelectedItems
                            //       .add(priceItems[index].id.toString());
                            // } else {
                            //   priceSelectedItems
                            //       .remove(priceItems[index].id.toString());
                            // }
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: CustomText(
                      "Language preference",
                      fontsize: 16,
                      fontFamily: "Sans",
                      color: AppColors.font,
                      weight: FontWeight.w500,
                    ),
                  ),
                  ListView.builder(
                    itemCount: languageItems.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                        // activeColor: AppColors.primary,
                        title: CustomText(
                          languageItems[index].name.toString(),
                          fontsize: 16,
                          weight: FontWeight.w400,
                        ),
                        value: cubit.postAJobRequest.english_level ==
                            languageItems[index].id,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (value) {
                          cubit.postAJobRequest.english_level =
                              languageItems[index].id;
                          setState(() {
                            // if (value ?? false) {
                            //   languageSelectedItems
                            //       .add(languageItems[index].id.toString());
                            // } else {
                            //   languageSelectedItems
                            //       .remove(languageItems[index].id.toString());
                            // }
                          });
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
