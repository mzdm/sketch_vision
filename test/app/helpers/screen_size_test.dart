// ignore_for_file: prefer_const_constructors
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sketch_vision_app/app/helpers/screen_size.dart';

import '../../../test/test_helpers/test_helpers.dart';

void main() {
  group('ScreenSize', () {
    testWidgets('gets correct screenWidth', (tester) async {
      var screenWidth = 0.0;

      tester.setScreenSize(400, 1000);
      await tester.pumpWidget(
        FluentApp(
          home: Builder(
            builder: (context) {
              return Button(
                key: Key('tap_button'),
                onPressed: () => screenWidth = context.screenWidth,
                child: Container(),
              );
            },
          ),
        ),
      );
      final button = tester.widget<Button>(find.byKey(Key('tap_button')));
      button.onPressed!();

      expect(screenWidth, 400);
    });

    testWidgets('gets correct screenHeight', (tester) async {
      var screenHeight = 0.0;

      tester.setScreenSize(400, 1000);
      await tester.pumpWidget(
        FluentApp(
          home: Builder(
            builder: (context) {
              return Button(
                key: Key('tap_button'),
                onPressed: () => screenHeight = context.screenHeight,
                child: Container(),
              );
            },
          ),
        ),
      );
      final button = tester.widget<Button>(find.byKey(Key('tap_button')));
      button.onPressed!();

      expect(screenHeight, 1000);
    });
  });
}
