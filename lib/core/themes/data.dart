import 'package:flutter/material.dart';

typedef AppThemeExtension = ThemeExtension<AppThemeData>;

class AppThemeData extends AppThemeExtension {
  @override
  ThemeExtension<AppThemeData> copyWith() {
    return this;
  }

  @override
  AppThemeExtension lerp(AppThemeExtension? other, double t) {
    if (other is! AppThemeData) return this;

    return AppThemeData();
  }

  List<Object?> get props => [];

}