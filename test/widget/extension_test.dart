import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:itargs/core/helpers/extensions.dart';


void main() {
  testWidgets('BuildContextUtils - MediaQuery and Dimensions Extensions', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            final mediaQuery = context.mediaQuery;

            expect(mediaQuery, isNotNull);
            expect(context.aspectRatio, mediaQuery.size.aspectRatio);
            expect(context.screenSize, mediaQuery.size);
            expect(context.height, mediaQuery.size.height);
            expect(context.width, mediaQuery.size.width);
            expect(context.shortestSide, mediaQuery.size.shortestSide);
            expect(context.longestSide, mediaQuery.size.longestSide);
            expect(context.orientation, mediaQuery.orientation);
            expect(context.heightR(0.5), mediaQuery.size.height * 0.5);
            expect(context.widthR(0.5), mediaQuery.size.width * 0.5);

            return Container();
          },
        ),
      ),
    );
  });

  testWidgets('BuildContextUtils - Device Breakpoints', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            final isMobile = context.isMobile;
            final isTablet = context.isTablet;
            final isDesktop = context.isDesktop;
            final isLargeMobile = context.isLargeMobile;
            final isSmallMobile = context.isSmallMobile;

            expect(isMobile, context.width <= 600);
            expect(isTablet, context.width > 600);
            expect(isDesktop, context.width > 950);
            expect(isLargeMobile, context.isMobile && context.height > 750);
            expect(isSmallMobile, context.isMobile && context.height < 550);

            return Container();
          },
        ),
      ),
    );
  });
}
