import 'package:flutter/material.dart';
import 'package:itargs/core/helpers/enums.dart';
import 'package:itargs/core/helpers/ui_helpers.dart';

import 'flavors/dark/dark_theme.dart';
import 'flavors/light/light_theme.dart';

abstract class AppThemeFlavor {
  factory AppThemeFlavor(ThemeFlavor themeFlavor) {
    switch (themeFlavor) {
      case ThemeFlavor.light:
        return LightTheme();
      case ThemeFlavor.dark:
        return DarkTheme();
      default:
        return UiHelpers.windowBrightness == Brightness.dark
            ? DarkTheme()
            : LightTheme();
    }
  }

  Brightness get windowBrightness;

  ThemeData createThemeData(BuildContext context);

  @protected
  AppThemeFlavor.init();
}