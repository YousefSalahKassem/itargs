import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itargs/core/helpers/enums.dart';
import 'package:itargs/core/themes/app_theme_flavor.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppThemeNotifier extends ChangeNotifier {
  static final provider = ChangeNotifierProvider<AppThemeNotifier>(
        (ref) {
      return AppThemeNotifier();
    },
  );

  final themeKey = 'Theme';
  ThemeFlavor _themeFlavor = ThemeFlavor.defaultValue;
  late AppThemeFlavor _appThemeFlavour = AppThemeFlavor(_themeFlavor);

  ThemeFlavor get themeFlavor => _themeFlavor;

  bool get isDarkMode => _themeFlavor == ThemeFlavor.dark;

  Brightness get windowBrightness => _appThemeFlavour.windowBrightness;

  ThemeData createTheme(BuildContext context) {
    return _appThemeFlavour.createThemeData(context);
  }

  AppThemeNotifier(){
    init();
  }

  Future<void> init() async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final savedFlavorValue = sharedPreferences.getString(themeKey);
    setThemeFlavor(ThemeFlavor.fromString(savedFlavorValue));
  }

  Future<void> toggleTheme() async {
    final newTheme = _themeFlavor == ThemeFlavor.light
        ? ThemeFlavor.dark
        : ThemeFlavor.light;
    await setThemeFlavor(newTheme);
  }

  Future<void> setThemeFlavor(ThemeFlavor flavor) async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    _themeFlavor = flavor;
    await sharedPreferences.setString(themeKey,flavor.name);
    _updateTheme();
  }

  void _updateTheme() {
    _appThemeFlavour = AppThemeFlavor(_themeFlavor);
    notifyListeners();
  }
}