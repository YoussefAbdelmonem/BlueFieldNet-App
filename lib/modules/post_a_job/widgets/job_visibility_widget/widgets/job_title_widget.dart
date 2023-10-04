import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/modules/post_a_job/domain/model/check_box_models.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';

class JobTitleWidget extends StatefulWidget {
  const JobTitleWidget({super.key});

  @override
  State<JobTitleWidget> createState() => _JobTitleWidgetState();
}

class _JobTitleWidgetState extends State<JobTitleWidget> {
  List<PriceModel> priceItems = [
    PriceModel(name: 'Any job success', id: 0),
    PriceModel(name: '80% & up', id: 1),
    PriceModel(name: '90% & up', id: 2),
  ];
  List<String> priceSelectedItems = [];
  List<PriceModel> languageItems = [
    PriceModel(name: 'Basic', id: 0),
    PriceModel(name: 'Conversational', id: 1),
    PriceModel(name: 'Fluent', id: 2),
    PriceModel(name: 'Native or Bilingual', id: 3),
  ];
  List<String> languageSelectedItems = [];
  @override
  Widget build(BuildContext context) {
    return  Column(
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
                    padding: EdgeInsets.symmetric(
                        horizontal: 24
                    ),
                    child: CustomText(
                      "Job Type",
                      fontsize: 16,
                      fontFamily: "Sans",
                      color: AppColors.font,
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    child:   ListView.builder(
                      itemCount: priceItems.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return CheckboxListTile(

                          title: CustomText(
                            priceItems[index].name.toString(),
                            fontsize: 14,
                            fontFamily: "Sans",
                            weight: FontWeight.w500,
                          ),


                          value: priceSelectedItems
                              .contains(priceItems[index].id.toString()),
                          controlAffinity: ListTileControlAffinity.leading,
                          onChanged: (value) {
                            setState(() {
                              if (value ?? false) {
                                priceSelectedItems
                                    .add(priceItems[index].id.toString());
                              } else {
                                priceSelectedItems.remove(
                                    priceItems[index].id.toString());
                              }
                            });

                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 24
                    ),
                    child: CustomText(
                      "Language preference",
                      fontsize: 14,
                      fontFamily: "Sans",
                      color: AppColors.font,
                    ),
                  ),

                  ListView.builder(
                    itemCount: languageItems.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    // physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                        title: CustomText(
                          languageItems[index].name.toString(),
                          fontsize: 14,
                          fontFamily: "Sans",
                          weight: FontWeight.w500,
                        ),


                        value: languageSelectedItems
                            .contains(languageItems[index].id.toString()),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (value) {
                          setState(() {
                            if (value ?? false) {
                              languageSelectedItems
                                  .add(languageItems[index].id.toString());
                            } else {
                              languageSelectedItems.remove(
                                  languageItems[index].id.toString());
                            }
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
