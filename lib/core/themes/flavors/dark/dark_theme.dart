import 'package:flutter/material.dart';
import 'package:itargs/core/helpers/extensions.dart';
import 'package:itargs/core/themes/app_sizes.dart';
import 'package:itargs/core/themes/app_text_styles.dart';
import 'package:itargs/core/themes/app_theme_flavor.dart';

part 'dark_color.dart';

class DarkTheme extends AppThemeFlavor {
  DarkTheme() : super.init();

  @override
  ThemeData createThemeData(BuildContext context) {
    final appSizes = context.isTablet ? AppSizes.tablet() : AppSizes.mobile();
    final appTextStyle =
    context.isTablet ? AppTextStyles.tablet() : AppTextStyles.mobile();
    final textTheme = appTextStyle.toTextTheme().apply(
      fontFamily: 'Tajawal',
      displayColor: _DarkColors.whiteColor,
      bodyColor: _DarkColors.whiteColor,
      decorationColor: _DarkColors.whiteColor,
    );
    return ThemeData.from(colorScheme: ColorScheme.fromSwatch()).copyWith(
        scaffoldBackgroundColor: _DarkColors.backgroundColor,
        textTheme: textTheme,
        appBarTheme: AppBarTheme(
          color: Colors.grey[900],
          titleTextStyle: appTextStyle.displayLarge.copyWith(
            color: _DarkColors.whiteColor,
          ),
          elevation: 1,
          centerTitle: true,
          toolbarHeight: appSizes.kVerticalSize84,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.grey[900],
          selectedItemColor: Colors.purple,
          unselectedItemColor:  _DarkColors.whiteColor,
          selectedLabelStyle: appTextStyle.bodyMedium,
          unselectedLabelStyle: appTextStyle.bodyMedium,
        ),
        listTileTheme: ListTileThemeData(
            titleTextStyle: textTheme.displayMedium?.copyWith(
                color: _DarkColors.whiteColor
            )
        ),
    );
  }

  @override
  Brightness get windowBrightness => Brightness.dark;
}
