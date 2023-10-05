import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:itargs/core/helpers/ui_helpers.dart';

void main() {
  group('UiHelpers', () {
    testWidgets('windowBrightness should return Brightness.light by default', (WidgetTester tester) async {
      Brightness? windowBrightness;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              windowBrightness = UiHelpers.windowBrightness;
              return Container();
            },
          ),
        ),
      );

      expect(windowBrightness, equals(Brightness.light));
    });
  });
}
