import 'dart:developer';

import 'package:fluent_ui/fluent_ui.dart' hide Colors;
import 'package:flutter/material.dart' hide GestureDetector, MouseCursor;
import 'package:graphview/GraphView.dart';
import 'package:ibm_apis/visual_recognition.dart';
import 'package:sketch_vision_app/app/locale/locale.dart';
import 'package:built_collection/built_collection.dart';
import 'package:sketch_vision_app/nav_pane/view/result_content.dart';

class HieararchyPage extends StatefulWidget {
  const HieararchyPage({
    Key? key,
    required this.classes,
  }) : super(key: key);

  final BuiltList<ClassResult> classes;

  static FluentPageRoute route(BuiltList<ClassResult> classes) {
    return FluentPageRoute(
      builder: (_) {
        return SinglePageContent(
          title: Locale_cs.hierarchy,
          content: HieararchyPage(classes: classes),
        );
      },
    );
  }

  @override
  _HieararchyPageState createState() => _HieararchyPageState();
}

class _HieararchyPageState extends State<HieararchyPage> {
  late final BuiltList<ClassResult> classes;

  final BuchheimWalkerConfiguration builder = BuchheimWalkerConfiguration();
  final Graph graph = Graph()..isTree = true;

  @override
  void initState() {
    super.initState();
    classes = widget.classes;

    final nodes = <String, int>{};
    final usedNodes = <String, int>{};
    final hierarchies = <List<String>>[];

    // TODO: this needs refactor (deduplicate some logic)
    classes.toList().forEach((classResult) {
      final typeHierarchy = classResult.typeHierarchy;
      if (typeHierarchy != null) {
        final split = typeHierarchy.split('/')
          ..removeWhere((element) => element.isEmpty);
        hierarchies.add(split);

        for (var i = 1; i <= split.length; i++) {
          if (nodes[split.elementAt(i - 1)] == null) {
            var temp = 1;
            while (nodes.values.contains(temp)) {
              temp++;
            }
            nodes[split.elementAt(i - 1)] = temp;
          }
        }

        log(nodes.toString());
      }
    });

    log(hierarchies.toString());

    hierarchies.forEach((hierarchy) {
      for (var i = 0; i < hierarchy.length; i++) {
        final label = hierarchy.elementAt(i);
        if (nodes[label] == null) {
          // invalid node
        } else if (nodes[label] == -1) {
          // node already built, but check if next leaf cannot be appended
          final nextElement = i + 1;
          if (nextElement < hierarchy.length && i != 0) {
            final nextLabel = hierarchy.elementAt(nextElement);
            if (nodes[nextLabel] != null && nodes[nextLabel] != -1) {
              graph.addEdge(
                Node.Id(usedNodes[label]),
                Node.Id(nextLabel.hashCode),
              );

              // mark as used/rendered
              usedNodes[nextLabel] = nextLabel.hashCode;
              nodes[nextLabel] = -1;
            }
          }
        } else {
          final nextElement = i + 1;
          if (nextElement < hierarchy.length) {
            final nextLabel = hierarchy.elementAt(nextElement);

            graph.addEdge(
              Node.Id(label.hashCode),
              Node.Id(nextLabel.hashCode),
            );

            // mark as used/rendered
            usedNodes[label] = label.hashCode;
            nodes[label] = -1;
          }
        }
      }
    });
    log('usedNodes: ${usedNodes.toString()}');

    // safe check that at least one edge was rendered
    if (graph.edges.isEmpty) {
      graph.addEdge(Node.Id(0), Node.Id(1));
    }

    builder
      ..siblingSeparation = (100)
      ..levelSeparation = (150)
      ..subtreeSeparation = (150)
      ..orientation = (BuchheimWalkerConfiguration.ORIENTATION_TOP_BOTTOM);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.move,
      child: InteractiveViewer(
        constrained: false,
        boundaryMargin: const EdgeInsets.all(500.0),
        minScale: 0.01,
        maxScale: 5.6,
        child: GraphView(
          graph: graph,
          algorithm: BuchheimWalkerAlgorithm(
            builder,
            TreeEdgeRenderer(builder),
          ),
          paint: Paint()
            ..color = Colors.black
            ..strokeWidth = 1
            ..style = PaintingStyle.stroke,
          builder: (node) {
            final id = node.key?.value;
            if (id == null || id is! int) {
              return const SizedBox();
            }
            return buildNodeRect(id);
          },
        ),
      ),
    );
  }

  Widget buildNodeRect(int a) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Text(
        'Node $a\n',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
