import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:graphview/GraphView.dart';
import 'package:ibm_apis/visual_recognition.dart';

/// {@template graph_label_builder}
/// Builds nodes from the type hierarchies.
/// {@endtemplate}
class GraphLabelBuilder {
  /// {@macro graph_label_builder}
  GraphLabelBuilder({
    required this.classes,
  }) : graph = Graph()..isTree = true;

  /// List of classified [ClassResult], which contains labels and its scores.
  final BuiltList<ClassResult> classes;
  final Graph graph;

  final nodes = <String, int>{};
  final builtNodes = <String, int>{};
  final hierarchies = <List<String>>[];

  void build() {
    // firstly extract the items of the hierarchy, e.g.:
    // "type_hierarchy":"/measuring instrument/timepiece/clock/wall clock"
    // "type_hierarchy":"/measuring instrument/timepiece/clock/analog clock"
    // to [[measuring instrument, timepiece, clock, analog clock], [measuring instrument, timepiece, clock, wall clock]]
    classes.toList().forEach((classResult) {
      final typeHierarchy = classResult.typeHierarchy;
      if (typeHierarchy != null) {
        final split = typeHierarchy.split('/')..removeWhere((e) => e.isEmpty);
        hierarchies.add(split);

        // assign unique value (id) to the each item
        for (var i = 0; i < split.length; i++) {
          final label = split.elementAt(i);
          if (nodes[label] == null) {
            nodes[label] = label.hashCode;
          }
        }
      }
    });

    log('nodes: ${nodes.toString()}');
    log('hierarchies: ${hierarchies.toString()}');

    var hasSameRoot = false;
    // check whether every hierarchy starts with the same root
    if (hierarchies.isNotEmpty) {
      final roots = hierarchies
          .map((hierarchy) => hierarchy.isEmpty ? '' : hierarchy.first)
          .toList();
      final firstRoot = roots.first;
      hasSameRoot = roots.every((root) => root == firstRoot);
    }

    hierarchies.forEach((hierarchy) {
      for (var i = 0; i < hierarchy.length; i++) {
        final label = hierarchy.elementAt(i);

        if (nodes[label] == null || nodes[label] == -1) {
          // invalid label or already used
        } else {
          // root
          if (i == 0) {
            final nextElement = i + 1;
            if (nextElement < hierarchy.length) {
              final nextLabel = hierarchy.elementAt(nextElement);

              if (hasSameRoot) {
                graph.addEdge(
                  Node.Id(label.hashCode),
                  Node.Id(nextLabel.hashCode),
                );
              } else {
                graph
                  ..addEdge(
                    Node.Id(0),
                    Node.Id(label.hashCode),
                  )
                  ..addEdge(
                    Node.Id(label.hashCode),
                    Node.Id(nextLabel.hashCode),
                  );
              }

              // mark as used/rendered
              builtNodes[label] = label.hashCode;
              nodes[label] = -1;
            }
            // leaf
          } else {
            final prevElement = i - 1;
            final prevLabel = hierarchy.elementAt(prevElement);
            final prevLabelId = nodes[prevLabel];
            // prev element/node is built, append to it
            if (prevLabelId != null && prevLabelId == -1) {
              graph.addEdge(
                Node.Id(prevLabel.hashCode),
                Node.Id(label.hashCode),
              );

              // mark as used/rendered
              builtNodes[label] = label.hashCode;
              nodes[label] = -1;
            }
          }
        }
      }
    });
    log('usedNodes: ${builtNodes.toString()}');

    // safe check that at least one edge was rendered
    if (graph.edges.isEmpty) {
      graph.addEdge(Node.Id(0), Node.Id(1));
    }
  }
}
