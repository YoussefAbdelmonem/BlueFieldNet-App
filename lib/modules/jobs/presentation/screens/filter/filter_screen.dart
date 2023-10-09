import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:bluefieldnet/shared/widgets/dropdown.dart';
import 'package:bluefieldnet/shared/widgets/edit_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                  "filter by",
                  fontFamily: "Sans",
                  color: AppColors.font,
                  fontsize: 16,
                  weight: FontWeight.w600,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: SvgPicture.asset("assets/icons/x.svg"))
              ],
            ),
            16.ph,
            const CustomText(
              "Category ",
              fontFamily: "Roboto",
              color: AppColors.font,
              fontsize: 24,
              weight: FontWeight.w500,
            ),
            8.ph,
            DropDownItem(
              options: [],
              onChanged: (w) {},
              hintColor: AppColors.primaryColor,
              hint: "Select Category",

            ),
            16.ph,
            const CustomText(
              "Location ",
              fontFamily: "Roboto",
              color: AppColors.font,
              fontsize: 24,
              weight: FontWeight.w500,
            ),
            8.ph,
            TextFormFieldWidget(
               prefixIcon: Icon(
                   Icons.search,
                  color: Colors.grey,
               ),
              hintText: "Search For Location",
              hintColor: AppColors.primaryColor,
            ),
            16.ph,
            const CustomText(
              "job type ",
              fontFamily: "Roboto",
              color: AppColors.font,
              fontsize: 24,
              weight: FontWeight.w500,
            ),
            8.ph,
            DropDownItem(
              options: [],
              onChanged: (w) {},
              hintColor: AppColors.primaryColor,
              hint: "Any Job Type",

            ),
            16.ph,
            const CustomText(
              "Experience Level ",
              fontFamily: "Roboto",
              color: AppColors.font,
              fontsize: 24,
              weight: FontWeight.w500,
            ),
            8.ph,
            DropDownItem(
              options: [],
              onChanged: (w) {},
              hintColor: AppColors.primaryColor,
              hint: "Entry",

            ),
            16.ph,
            const CustomText(
              "Budget ",
              fontFamily: "Roboto",
              color: AppColors.font,
              fontsize: 24,
              weight: FontWeight.w500,
            ),
            8.ph,
            TextFormFieldWidget(
              hintText: "Enter Your Budget",
              hintColor: AppColors.primaryColor,
            ),
            16.ph,
            const CustomText(
              "hours per week ",
              fontFamily: "Roboto",
              color: AppColors.font,
              fontsize: 24,
              weight: FontWeight.w500,
            ),
            8.ph,
            TextFormFieldWidget(
              hintText: "I don't know",
              hintColor: AppColors.primaryColor,
            ),
            16.ph,
            const CustomText(
              "project length ",
              fontFamily: "Roboto",
              color: AppColors.font,
              fontsize: 24,
              weight: FontWeight.w500,
            ),
            8.ph,
            DropDownItem(
              options: [],
              onChanged: (w) {},
              hintColor: AppColors.primaryColor,
              hint: "Any Project Length",

            ),
          ],
        ),
      ),
    )));
  }
}
