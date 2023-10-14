import 'package:flutter/material.dart';

import 'dynamic_theme/colors.dart';
import 'dynamic_theme/themes_color.dart';
import 'package:material_color_gen/material_color_gen.dart';

class ThemesManger {
  static ThemeData get appTheme {
    return ThemeData(
      fontFamily: 'Sans',
      primarySwatch: AppThemes().selectedSchema.primary.toMaterialColor(),
      scaffoldBackgroundColor:
          AppColors.additionalButtonColor, //Colors.grey.shade100,
      appBarTheme: AppBarTheme(
          surfaceTintColor: Colors.transparent,
          backgroundColor: AppColors.primary,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: AppColors.background)),
      colorScheme: AppThemes().selectedSchema,
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(AppColors.white),
        overlayColor: MaterialStateProperty.all(AppColors.white),
        checkColor: MaterialStateProperty.all(AppColors.checkBoxTextColor),
        side: BorderSide(
          color: AppColors.checkBoxTextColor,
        ),

        // shape: RoundedRectangleBorder(
        //     // borderRadius: BorderRadius.circular(8),

        //     //  act: AppColors.primary,
        //     ),
      ),
    );
  }
}
