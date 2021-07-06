// ignore_for_file: prefer_const_constructors
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sketch_vision_app/hierarchy/widgets/node_rect.dart';

import '../../test_helpers/test_helpers.dart';

void main() {
  group('NodeRect', () {
    testWidgets(
        'renders with "root" text if it is '
        'root and score is null', (tester) async {
      final nodeRect = NodeRect(label: 'root');
      await tester.pumpApp(nodeRect);

      expect(
        tester.widget<Text>(find.byType(Text).last).data,
        equals('root'),
      );
    });

    testWidgets(
        'renders with "root" text if it is '
        'root and score is not null', (tester) async {
      final nodeRect = NodeRect(label: 'root', score: 0.4);
      await tester.pumpApp(nodeRect);

      expect(
        tester.widget<Text>(find.byType(Text).last).data,
        equals('root'),
      );
    });

    testWidgets(
        'renders with empty text if unknown '
        'properties values (both null)', (tester) async {
      final nodeRect = NodeRect();
      await tester.pumpApp(nodeRect);

      expect(
        tester.widget<Text>(find.byType(Text).last).data,
        equals(''),
      );
    });

    testWidgets(
        'renders with label and score if both '
        'properties are known', (tester) async {
      const label = 'car';
      const score = 0.4;

      final nodeRect = NodeRect(label: label, score: score);
      await tester.pumpApp(nodeRect);

      expect(
        tester.widget<Text>(find.byType(Text).last).data,
        equals('$label\n($score)'),
      );
    });
  });
}
