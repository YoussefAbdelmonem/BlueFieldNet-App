
import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/core/utiles/extentions.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class JobDefinitionRow extends StatelessWidget {
   JobDefinitionRow({super.key, required this.title,this.image});
  final String title;
  String ?image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: ShapeDecoration(
        color: Color(0xFF20384B),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(image??"assets/icons/jobs_row.svg"),
          8.pw,
          CustomText(
            title,
            fontsize: 16,
            color: AppColors.white,
            fontFamily: "Sans",
            weight: FontWeight.w500,
          ),

        ],
      ),
    );

  }
}
