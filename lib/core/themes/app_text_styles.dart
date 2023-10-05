import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles extends ThemeExtension<AppTextStyles> {
  static const fontFamily = 'Tajawal';
  static const fontLineHeightMultiplier = 1.8;

  final TextStyle displayLarge;
  final TextStyle displayMedium;
  final TextStyle displaySmall;
  final TextStyle headlineLarge;
  final TextStyle headlineMedium;
  final TextStyle headlineSmall;
  final TextStyle titleLarge;
  final TextStyle titleMedium;
  final TextStyle titleSmall;
  final TextStyle bodyLarge;
  final TextStyle bodyMedium;
  final TextStyle labelLarge;
  final TextStyle bodySmall;
  final TextStyle labelSmall;

  const AppTextStyles._({
    required this.displayLarge,
    required this.displayMedium,
    required this.displaySmall,
    required this.headlineLarge,
    required this.headlineMedium,
    required this.headlineSmall,
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.labelLarge,
    required this.bodySmall,
    required this.labelSmall,
  });

  factory AppTextStyles.mobile() {
    return AppTextStyles._(
      bodyLarge: TextStyle(
        fontSize: 12.spMin,
        fontWeight: FontWeight.w500,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.5.h,
      ),
      bodyMedium: TextStyle(
        fontSize: 12.spMin,
        fontWeight: FontWeight.w400,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.5.h,
      ),
      bodySmall: TextStyle(
        fontSize: 10.spMin,
        fontWeight: FontWeight.w400,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.6,
      ),
      displayLarge: TextStyle(
        fontSize: 18.spMin,
        fontWeight: FontWeight.bold,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 2.6,
      ),
      displayMedium: TextStyle(
        fontSize: 18.spMin,
        fontWeight: FontWeight.w500,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 2.1,
      ),
      displaySmall: TextStyle(
        fontSize: 17.spMin,
        fontWeight: FontWeight.w400,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.5.h,
      ),
      headlineLarge: TextStyle(
        fontSize: 16.spMin,
        fontWeight: FontWeight.w700,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.5.h,
      ),
      headlineMedium: TextStyle(
        fontSize: 16.spMin,
        fontWeight: FontWeight.w500,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.5.h,
      ),
      headlineSmall: TextStyle(
        fontSize: 16.spMin,
        fontWeight: FontWeight.w400,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.18.h,
      ),
      labelLarge: TextStyle(
        fontSize: 10.spMin,
        fontWeight: FontWeight.w500,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.5.h,
      ),
      labelSmall: TextStyle(
        fontSize: 11.spMin,
        fontWeight: FontWeight.normal,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: fontLineHeightMultiplier,
      ),
      titleLarge: TextStyle(
        fontSize: 14.spMin,
        fontWeight: FontWeight.w500,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.14.h,
      ),
      titleMedium: TextStyle(
        fontSize: 14.spMin,
        fontWeight: FontWeight.w400,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.4.h,
      ),
      titleSmall: TextStyle(
        fontSize: 12.spMin,
        fontWeight: FontWeight.w700,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.16.h,
      ),
    );
  }

  factory AppTextStyles.tablet() {
    return AppTextStyles._(
      bodyLarge: TextStyle(
        fontSize: 20.spMin,
        fontWeight: FontWeight.w500,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.5.h,
      ),
      bodyMedium: TextStyle(
        fontSize: 20.spMin,
        fontWeight: FontWeight.w400,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.5.h,
      ),
      bodySmall: TextStyle(
        fontSize: 16.spMin,
        fontWeight: FontWeight.w400,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.6,
      ),
      displayLarge: TextStyle(
        fontSize: 30.spMin,
        fontWeight: FontWeight.bold,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 2.6,
      ),
      displayMedium: TextStyle(
        fontSize: 30.spMin,
        fontWeight: FontWeight.w500,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 2.1,
      ),
      displaySmall: TextStyle(
        fontSize: 25.spMin,
        fontWeight: FontWeight.w400,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.5.h,
      ),
      headlineLarge: TextStyle(
        fontSize: 26.spMin,
        fontWeight: FontWeight.w700,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.5.h,
      ),
      headlineMedium: TextStyle(
        fontSize: 26.spMin,
        fontWeight: FontWeight.w500,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.5.h,
      ),
      headlineSmall: TextStyle(
        fontSize: 26.spMin,
        fontWeight: FontWeight.w400,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.18.h,
      ),
      labelLarge: TextStyle(
        fontSize: 16.spMin,
        fontWeight: FontWeight.w500,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.5.h,
      ),
      labelSmall: TextStyle(
        fontSize: 18.spMin,
        fontWeight: FontWeight.normal,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: fontLineHeightMultiplier,
      ),
      titleLarge: TextStyle(
        fontSize: 24.spMin,
        fontWeight: FontWeight.w500,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.14.h,
      ),
      titleMedium: TextStyle(
        fontSize: 24.spMin,
        fontWeight: FontWeight.w400,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.4.h,
      ),
      titleSmall: TextStyle(
        fontSize: 20.spMin,
        fontWeight: FontWeight.w700,
        textBaseline: TextBaseline.ideographic,
        fontFamily: fontFamily,
        height: 1.16.h,
      ),
    );
  }

  TextTheme toTextTheme() {
    return TextTheme(
      displayLarge: displayLarge,
      displayMedium: displayMedium,
      displaySmall: displaySmall,
      headlineLarge: headlineLarge,
      headlineMedium: headlineMedium,
      headlineSmall: headlineSmall,
      titleLarge: titleLarge,
      titleMedium: titleMedium,
      titleSmall: titleSmall,
      bodyLarge: bodyLarge,
      bodyMedium: bodyMedium,
      labelLarge: labelLarge,
      bodySmall: bodySmall,
      labelSmall: labelSmall,
    );
  }

  @override
  ThemeExtension<AppTextStyles> copyWith() {
    return this;
  }

  @override
  AppTextStyles lerp(AppTextStyles? other, double t) {
    TextStyle lerpStyle(TextStyle? style1, TextStyle style2) {
      return TextStyle.lerp(style1, style2, t) ?? style2;
    }

    return AppTextStyles._(
      displayLarge: lerpStyle(other?.displayLarge, displayLarge),
      displayMedium: lerpStyle(other?.displayMedium, displayMedium),
      displaySmall: lerpStyle(other?.displaySmall, displaySmall),
      headlineLarge: lerpStyle(other?.headlineLarge, headlineLarge),
      headlineMedium: lerpStyle(other?.headlineMedium, headlineMedium),
      headlineSmall: lerpStyle(other?.headlineSmall, headlineSmall),
      titleLarge: lerpStyle(other?.titleLarge, titleLarge),
      titleMedium: lerpStyle(other?.titleMedium, titleMedium),
      titleSmall: lerpStyle(other?.titleSmall, titleSmall),
      bodyLarge: lerpStyle(other?.bodyLarge, bodyLarge),
      bodyMedium: lerpStyle(other?.bodyMedium, bodyMedium),
      labelLarge: lerpStyle(other?.labelLarge, labelLarge),
      bodySmall: lerpStyle(other?.bodySmall, bodySmall),
      labelSmall: lerpStyle(other?.labelSmall, labelSmall),
    );
  }
}