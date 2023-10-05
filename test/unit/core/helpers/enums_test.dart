import 'package:flutter_test/flutter_test.dart';
import 'package:itargs/core/helpers/enums.dart';

void main() {
  group('ThemeFlavor', () {
    test('defaultValue should be ThemeFlavor.system', () {
      expect(ThemeFlavor.defaultValue, equals(ThemeFlavor.system));
    });

    test('fromString should return ThemeFlavor.light for "light"', () {
      final flavor = ThemeFlavor.fromString('light');
      expect(flavor, equals(ThemeFlavor.light));
    });

    test('fromString should return ThemeFlavor.dark for "dark"', () {
      final flavor = ThemeFlavor.fromString('dark');
      expect(flavor, equals(ThemeFlavor.dark));
    });

    test('fromString should return ThemeFlavor.system for null', () {
      final flavor = ThemeFlavor.fromString(null);
      expect(flavor, equals(ThemeFlavor.system));
    });

    test('fromString should return ThemeFlavor.system for empty string', () {
      final flavor = ThemeFlavor.fromString('');
      expect(flavor, equals(ThemeFlavor.system));
    });

    test('fromString should return ThemeFlavor.system for unknown value', () {
      final flavor = ThemeFlavor.fromString('unknown');
      expect(flavor, equals(ThemeFlavor.system));
    });
  });
}
