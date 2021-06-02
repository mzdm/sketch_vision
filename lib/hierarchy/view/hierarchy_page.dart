import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:fluent_ui/fluent_ui.dart' hide Colors;
import 'package:flutter/material.dart' hide GestureDetector, MouseCursor;
import 'package:graphview/GraphView.dart';
import 'package:ibm_apis/visual_recognition.dart';
import 'package:sketch_vision_app/app/locale/locale.dart';
import 'package:sketch_vision_app/hierarchy/helpers/graph_label_builder.dart';
import 'package:sketch_vision_app/hierarchy/widgets/node_rect.dart';
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
  final graphConfig = BuchheimWalkerConfiguration()
    ..siblingSeparation = (100)
    ..levelSeparation = (150)
    ..subtreeSeparation = (150)
    ..orientation = (BuchheimWalkerConfiguration.ORIENTATION_TOP_BOTTOM);

  late final BuiltList<ClassResult> classes;
  late final Graph graph;

  var usedNodesWidget = <String, int>{};

  @override
  void initState() {
    super.initState();
    classes = widget.classes;

    final graphBuilder = GraphLabelBuilder(classes: classes)..build();
    graph = graphBuilder.graph;
    usedNodesWidget = Map.of(graphBuilder.builtNodes);
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
            graphConfig,
            TreeEdgeRenderer(graphConfig),
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

            var findLabel = usedNodesWidget.keys.firstWhereOrNull(
              (label) => usedNodesWidget[label] == id,
            );
            final findScore = classes.toList().firstWhereOrNull(
                  (classResult) => classResult.class_ == findLabel,
                );

            // root
            if (id == 0) {
              findLabel = 'root';
            }

            return NodeRect(
              label: findLabel,
              score: findScore?.score,
            );
          },
        ),
      ),
    );
  }
}
