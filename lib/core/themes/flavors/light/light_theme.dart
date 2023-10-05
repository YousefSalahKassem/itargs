import 'package:flutter/material.dart';
import 'package:itargs/core/helpers/extensions.dart';
import 'package:itargs/core/themes/app_sizes.dart';
import 'package:itargs/core/themes/app_text_styles.dart';
import 'package:itargs/core/themes/app_theme_flavor.dart';

part 'light_color.dart';

class LightTheme extends AppThemeFlavor {
  LightTheme() : super.init();

  @override
  ThemeData createThemeData(BuildContext context) {
    final appSizes = context.isTablet ? AppSizes.tablet() : AppSizes.mobile();
    final appTextStyle =
        context.isTablet ? AppTextStyles.tablet() : AppTextStyles.mobile();
    final textTheme = appTextStyle.toTextTheme().apply(
          fontFamily: 'Tajawal',
          displayColor: _LightColors.blackColor,
          bodyColor: _LightColors.blackColor,
          decorationColor: _LightColors.blackColor,
        );
    return ThemeData.from(colorScheme: ColorScheme.fromSwatch()).copyWith(
        scaffoldBackgroundColor: _LightColors.backgroundColor,
        textTheme: textTheme,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          titleTextStyle: appTextStyle.displayLarge.copyWith(
            color: _LightColors.blackColor,
          ),
          elevation: 1,
          centerTitle: true,
          toolbarHeight: appSizes.kVerticalSize84,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: _LightColors.whiteColor,
          selectedItemColor: Colors.purple,
          unselectedItemColor:  _LightColors.blackColor,
          selectedLabelStyle: appTextStyle.bodyMedium,
          unselectedLabelStyle: appTextStyle.bodyMedium,
        ),
        listTileTheme: ListTileThemeData(
          titleTextStyle: textTheme.displayMedium?.copyWith(
            color: _LightColors.blackColor
          )
        )
    );
  }

  @override
  Brightness get windowBrightness => Brightness.light;
}
