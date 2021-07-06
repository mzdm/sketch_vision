// ignore_for_file: prefer_const_constructors
import 'package:carbon_icons/carbon_icons.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sketch_vision_app/app/theme/colors.dart';

import '../../test/test_helpers/test_helpers.dart';

void main() {
  group('App', () {
    testWidgets(
        'scaffoldBackgroundColor theme'
        'color is applied', (tester) async {
      await tester.pumpApp(
        NavigationView(
          appBar: NavigationAppBar(
            title: Text('NavigationAppBar'),
          ),
          pane: NavigationPane(
            displayMode: PaneDisplayMode.compact,
          ),
        ),
      );

      final appBarFinders = find.descendant(
        of: find.byType(NavigationView),
        matching: find.byType(Container),
      );
      expect(appBarFinders, findsWidgets);

      final colors = <Color?>[];
      for (var i = 0; i < appBarFinders.allCandidates.length; i++) {
        try {
          final container = tester.widget<Container>(appBarFinders.at(i));
          colors.add(container.color);
        } catch (e) {
          break;
        }
      }

      // finds theme color in AppBar
      expect(
        colors.any((color) => color == SketchColors.nav_body_content),
        true,
      );

      // does not find color that was not set
      expect(
        colors.any((color) => color == SketchColors.shimmer_highlight),
        false,
      );
    });
  });
}
