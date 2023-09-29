import 'package:flutter/material.dart';

import 'themes_color.dart';

enum AppThemeMode { primary, primaryDark, pink, blue, custom }

class AppColors {

  static const primaryColor = Color(0xFF057EE7);
  static const Color white = Color(0xFFCBD1CE);
  static const Color grey = Color(0xFF636363);
  static const Color bottomNav = Color(0xFFF8F8F8);
  static const Color bottomNavIcon = Color(0xFFD9D9D9);
  static const Color bottomNavActiveIcon = Color(0xFF057EE7);
  static AppThemes selectedTheme = AppThemes();
  static Color get primary => selectedTheme.selectedSchema.primary;
  static Color get onPrimary => selectedTheme.selectedSchema.onPrimary;

  static Color get secondary => selectedTheme.selectedSchema.secondary;
  static Color get secondaryContainer =>
      selectedTheme.selectedSchema.secondaryContainer;

  static Color get error => selectedTheme.selectedSchema.error;

  static Color get background => selectedTheme.selectedSchema.background;
  static Color get appBarBackground =>
      selectedTheme.selectedSchema.onBackground;
  static Color get surface => selectedTheme.selectedSchema.surface;

  static Color get shadow => selectedTheme.selectedSchema.shadow;
  static Color get outline => selectedTheme.selectedSchema.outline;

  static Color get brightnessColor =>
      selectedTheme.selectedSchema.brightnessColor;
  static Color get brightnessColorInv =>
      selectedTheme.selectedSchema.brightnessColorInverse;
  static Brightness get brightness => selectedTheme.selectedSchema.brightness;
}
