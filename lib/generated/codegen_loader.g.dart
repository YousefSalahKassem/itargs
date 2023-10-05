// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar = {
  "tabs": {
    "home": "الرئسية",
    "more": "المزيد"
  },
  "screenTitle": {
    "home": "هذا التطبيق",
    "more": "المزيد"
  },
  "settings": {
    "title": "الاعدادات",
    "theme": "الوع الليلى",
    "language": "اللغة العربية"
  },
  "home": {
    "top_likes": "أعلى الإعجابات",
    "play": "ابدا هذا"
  }
};
static const Map<String,dynamic> en = {
  "tabs": {
    "home": "Home",
    "more": "More"
  },
  "screenTitle": {
    "home": "This is App",
    "more": "More"
  },
  "settings": {
    "title": "Settings",
    "theme": "Dark Mode",
    "language": "Arabic Language"
  },
  "home": {
    "top_likes": "Top Likes",
    "play": "Play This"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": ar, "en": en};
}
