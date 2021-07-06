// ignore_for_file: prefer_const_constructors
import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:collection/src/iterable_extensions.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ibm_apis/visual_recognition.dart';
import 'package:sketch_vision_app/hierarchy/helpers/graph_label_builder.dart';
import 'package:sketch_vision_app/labeler/data/fake_response.dart';
import 'package:sketch_vision_app/labeler/helpers/classifier_sorter.dart';

void main() {
  group('GraphLabelBuilder', () {
    testWidgets('builds scenario #1 (measure image)', (tester) async {
      final classes = fakeData(testDataLabels);
      final graphLabelBuilder = GraphLabelBuilder(classes: classes);
      expect(graphLabelBuilder.classes.length, 9);
      expect(graphLabelBuilder.graph.nodes.isEmpty, isTrue);
      expect(graphLabelBuilder.hierarchies.isEmpty, isTrue);
      expect(graphLabelBuilder.nodes.isEmpty, isTrue);
      expect(graphLabelBuilder.builtNodes.isEmpty, isTrue);
      // only 2 classes have defined full type hierarchy
      final typeHierarchies = graphLabelBuilder.classes.where(
        (e) => e.typeHierarchy != null,
      );
      expect(typeHierarchies.length, 2);
      expect(
        typeHierarchies.elementAt(0).typeHierarchy,
        equals('/measuring instrument/timepiece/clock/analog clock'),
      );
      expect(
        typeHierarchies.elementAt(1).typeHierarchy,
        equals('/measuring instrument/timepiece/clock/wall clock'),
      );

      // build graph
      graphLabelBuilder.build();
      expect(graphLabelBuilder.classes.length, 9);
      expect(graphLabelBuilder.graph.nodes.length, 5);
      expect(graphLabelBuilder.hierarchies.length, 2);
      expect(graphLabelBuilder.nodes.length, 5);
      expect(graphLabelBuilder.builtNodes.length, 5);

      // verify correct tree order, how it should built
      //
      // measure instrument -> timepiece -> clock -> analog clock
      //                                          -> wall clock
      // EDGE num) SOURCE -> DESTINATION
      // 1) measuring instrument -> timepiece
      // 2) timepiece -> clock
      // 3) clock -> analog clock
      // 4) clock -> wall clock
      final graphPath = <Map<String, String>>[
        {'measuring instrument': 'timepiece'},
        {'timepiece': 'clock'},
        {'clock': 'analog clock'},
        {'clock': 'wall clock'},
      ];
      expect(graphLabelBuilder.graph.edges.length, 4);
      expect(verifyGraphPathOrder(graphPath, graphLabelBuilder), isTrue);
    });

    testWidgets('builds scenario #2 (___ image)', (tester) async {
      //
    });

    testWidgets('builds scenario #3 (___ image)', (tester) async {
      //
    });
  });
}

BuiltList<ClassResult> fakeData(String testData) {
  final classifiedImages = standardSerializers
      .deserializeWith(
        ClassifiedImages.serializer,
        json.decode(testData),
      )!
      .images
      .first;
  return sortByScore(classifiedImages.classifiers);
}

bool verifyGraphPathOrder(
  List<Map<String, String>> path,
  GraphLabelBuilder graphLabelBuilder,
) {
  final edges = graphLabelBuilder.graph.edges;
  if (path.length != edges.length) {
    throw ('path length not equal to edges length');
  }
  for (var i = 0; i < path.length; i++) {
    final pathSource = path[i].keys.first;
    final pathDestination = path[i][pathSource];
    final edgeSourceKey = edges.elementAt(i).source.key?.value;
    final edgeDestinationKey = edges.elementAt(i).destination.key?.value;

    final edgeSource = graphLabelBuilder.builtNodes.keys.firstWhereOrNull(
      (label) => graphLabelBuilder.builtNodes[label] == edgeSourceKey,
    );
    final edgeDestination = graphLabelBuilder.builtNodes.keys.firstWhereOrNull(
      (label) => graphLabelBuilder.builtNodes[label] == edgeDestinationKey,
    );

    // verify path map with built graph edges
    if (pathSource != edgeSource) {
      throw ('pathSource: $pathSource does not equal to edgeSource: $edgeSource');
    }
    if (pathDestination != edgeDestination) {
      throw ('pathDestination: $pathDestination does not equal to edgeDestination: $edgeDestination');
    }
  }
  return true;
}
