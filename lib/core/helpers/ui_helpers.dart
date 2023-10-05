import 'package:flutter/material.dart';

mixin UiHelpers {
  static Brightness get windowBrightness {
    return MediaQueryData.fromView(WidgetsBinding.instance.window)
        .platformBrightness;
  }
}