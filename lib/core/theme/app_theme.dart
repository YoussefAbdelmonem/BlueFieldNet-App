import 'package:flutter/material.dart';

import 'dynamic_theme/colors.dart';
import 'dynamic_theme/themes_color.dart';
import 'package:material_color_gen/material_color_gen.dart';

class ThemesManger {
  static ThemeData get appTheme {
    return ThemeData(
        fontFamily: 'candra',
        primarySwatch: AppThemes().selectedSchema.primary.toMaterialColor(),
        scaffoldBackgroundColor: Colors.grey.shade100,
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
        )));
  }
}
