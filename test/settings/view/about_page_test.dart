import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sketch_vision_app/settings/view/about_page.dart';

import '../../../test/test_helpers/helpers.dart';

void main() {
  group('InfoPage', () {
    testWidgets('shows LicensePage', (tester) async {
      await tester.pumpApp(const AboutPage());
      expect(find.byType(LicensePage), findsOneWidget);
    });
  });
}
