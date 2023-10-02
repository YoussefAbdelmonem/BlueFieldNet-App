import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/modules/post_a_job/domain/model/check_box_models.dart';
import 'package:bluefieldnet/shared/widgets/button_widget.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/text_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
enum Item { one, two }
class JobVisibilityWidget extends StatefulWidget {
  const JobVisibilityWidget({Key? key}) : super(key: key);

  @override
  State<JobVisibilityWidget> createState() => _JobVisibilityWidgetState();
}

class _JobVisibilityWidgetState extends State<JobVisibilityWidget> {
  Item selectedItem = Item.one;
  bool checkVal = false;
  Color getTextColor(Item item) {
    return selectedItem == item ? Colors.blue : Colors.black;
  }

  Color getIconColor(Item item) {
    return selectedItem == item ? AppColors.primaryColor : AppColors.grey;

  }

  void selectItem(Item item) {
    setState(() {
      selectedItem = item;
      print(selectedItem);
    });
  }
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  List<String> selectedItems = [];

  ///check box
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
  List<PriceModel> amountItems = [
    PriceModel(name: 'Any amount earned', id: 0),
    PriceModel(name: '100+ earned', id: 1),
    PriceModel(name: '1k+ earned', id: 2),
    PriceModel(name: '10k+ earned', id: 3),
  ];
  List<String> amountSelectedItems = [];

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 500,
            height: 48,
            padding:
            const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            decoration: ShapeDecoration(
              color: Color(0xFF20384B),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomText(
                  'Visibility',
                  fontsize: 16,
                  color: AppColors.white,
                  fontFamily: "Sans",
                  weight: FontWeight.w500,
                ),
                SvgPicture.asset("assets/icons/done.svg"),
              ],
            ),
          ),
          16.ph,
          Container(
            // height: MediaQuery.of(context).size.height ,
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
                    'Who can see your job?',
                    fontsize: 16,
                    color: AppColors.font,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  16.ph,
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          selectedItem = Item.one;
                          setState(() {

                          });
                        },
                        child: Container(
                          width: 140,

                          height: 120,
                          padding: EdgeInsets.symmetric(
                              horizontal: 12
                          ),

                          decoration: ShapeDecoration(
                            color: Color(0xFFF5F5F5),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFF057EE7)),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/icons/talend.svg",color: getIconColor(Item.one),),
                              8.ph,
                              CustomText(
                                'Only Bluefield Talents',
                                fontsize: 10,
                                color: getTextColor(Item.one),
                                fontFamily: "Sans",
                                weight: FontWeight.w500,
                              ),
                              8.ph,
                              const CustomText(
                                'Only Bluefield team leaders can find this job.',
                                fontsize: 10,
                                color: AppColors.font,
                                align: TextAlign.center,
                                fontFamily: "Sans",
                                weight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                      ),
                      8.pw,
                      GestureDetector(
                        onTap: (){
                          selectedItem = Item.two;
                          setState(() {

                          });
                        },
                        child: Container(
                          width: 140,

                          height: 120,
                          padding: EdgeInsets.symmetric(
                              horizontal: 12
                          ),

                          decoration: ShapeDecoration(
                            color: Color(0xFFF5F5F5),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFF057EE7)),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/icons/lock.svg",color: getIconColor(Item.two),),
                              8.ph,
                              CustomText(
                                'Invite-only',
                                fontsize: 10,
                                color: getTextColor(Item.two),
                                fontFamily: "Sans",
                                weight: FontWeight.w500,
                              ),
                              8.ph,
                              const CustomText(
                                'Only team leaders and agencies you have invited can find this job.',
                                fontsize: 10,
                                color: AppColors.font,
                                align: TextAlign.center,
                                fontFamily: "Sans",
                                weight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                  16.ph,
                  const CustomText(
                    'Talent Preferences (optional)',
                    fontsize: 16,
                    color: AppColors.font,
                    fontFamily: "Sans",
                    weight: FontWeight.w500,
                  ),
                  8.ph,
                  const CustomText(
                    'Specify the qualifications you\'re looking for in a successful proposal.',
                    fontsize: 12,
                    color: AppColors.checkBoxTextColor,
                    fontFamily: "Roboto",
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
                            isExpanded: true,

                            hint: CustomText(
                              'Select Country',
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
                  16.ph,
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            isExpanded: true,

                            hint: CustomText(
                              'Talent Preferences',
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
                  16.ph,
                  Column(
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
                  ),
                  16.ph,
                  Column(
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
                                    "Amount Earned",
                                    fontsize: 16,
                                    fontFamily: "Sans",
                                    color: AppColors.font,
                                  ),
                                ),
                                ListView.builder(
                                  itemCount: amountItems.length,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (context, index) {
                                    return CheckboxListTile(

                                      title: CustomText(
                                        amountItems[index].name.toString(),
                                        fontsize: 14,
                                        fontFamily: "Sans",
                                        weight: FontWeight.w500,
                                      ),


                                      value: amountSelectedItems
                                          .contains(amountItems[index].id.toString()),
                                      controlAffinity: ListTileControlAffinity.leading,
                                      onChanged: (value) {
                                        setState(() {
                                          if (value ?? false) {
                                            amountSelectedItems
                                                .add(amountItems[index].id.toString());
                                          } else {
                                            amountSelectedItems.remove(
                                                amountItems[index].id.toString());
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
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8
                                  ),
                                  child: CustomText(
                                    "Other Languages",
                                    fontsize: 16,
                                    fontFamily: "Sans",
                                    color: AppColors.font,
                                  ),
                                ),
                                16.ph,
                                DropdownButtonHideUnderline(
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
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  64.ph,


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonWidget(
                        width: 150,
                        height: 40,
                        borderColor: AppColors.buttonBorderColor,
                        withBorder: true,
                        buttonColor: Colors.white,
                        textColor:AppColors.buttonBorderColor ,
                        title: "previous",
                      ),
                        16.pw,
                        ButtonWidget(
                          width: 150,
                          height: 40,
                          onTap: (){},
                          title: "Next",
                          buttonColor:AppColors. buttonColor,
                        ),


                      ]
                  ),
                  32.ph
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
