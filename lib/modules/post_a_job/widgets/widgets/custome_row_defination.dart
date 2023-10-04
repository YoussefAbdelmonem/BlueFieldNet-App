import 'package:bluefieldnet/core/theme/dynamic_theme/colors.dart';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class DefinitionRow extends StatelessWidget {
  const DefinitionRow({super.key, required this.title});
final String title;
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           CustomText(
            title,
            fontsize: 16,
            color: AppColors.white,
            fontFamily: "Sans",
            weight: FontWeight.w500,
          ),
          SvgPicture.asset("assets/icons/done.svg"),
        ],
      ),
    );

  }
}
