import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:itargs/core/helpers/locale.dart';
import 'package:itargs/core/themes/app_sizes.dart';
import 'package:itargs/core/themes/app_theme.dart';
import 'package:itargs/core/themes/data.dart';

extension BuildContextUtils on BuildContext {
  //* MediaQuery
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  //* Dimensions Extensions
  double get aspectRatio => MediaQuery.of(this).size.aspectRatio;

  Size get screenSize => MediaQuery.of(this).size;

  double get height => MediaQuery.of(this).size.height;

  double get width => MediaQuery.of(this).size.width;

  double get shortestSide => MediaQuery.of(this).size.shortestSide;

  double get longestSide => MediaQuery.of(this).size.longestSide;

  Orientation get orientation => MediaQuery.of(this).orientation;

  double heightR(double value) => MediaQuery.of(this).size.height * value;

  double widthR(double value) => MediaQuery.of(this).size.width * value;

  //* Device Breakpoints
  bool get isMobile => width <= 600;

  bool get isTablet => width > 600;

  bool get isDesktop => width > 950;

  bool get isLargeMobile => isMobile && height > 750;

  bool get isSmallMobile => isMobile && height < 550;

  //* Theme Extensions
  TextTheme get textTheme => Theme.of(this).textTheme;

  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  AppThemeData get appTheme => AppTheme.of(this);

  AppSizes get appSizes => AppTheme.sizesOf(this);

  bool get isArabic => locale == AppLocale.arabic;

}