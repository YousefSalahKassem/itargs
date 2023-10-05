import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:itargs/core/helpers/locale.dart';

void main() {
  group('AppLocale', () {
    test('AppLocale - Constants', () {
      expect(AppLocale.arabic, equals(const Locale('ar', 'EG')));
      expect(AppLocale.english, equals(const Locale('en', 'US')));
      expect(AppLocale.locales, equals(const [Locale('ar', 'EG'), Locale('en', 'US')]));
    });
  });
}
