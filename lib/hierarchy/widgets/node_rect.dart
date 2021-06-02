import 'package:fluent_ui/fluent_ui.dart';
import 'package:sketch_vision_app/app/theme/colors.dart';
import 'package:sketch_vision_app/hierarchy/view/hierarchy_page.dart';

/// {@template node_rect}
/// A node widget with rectangular shape in the [HierarchyPage] view.
/// {@endtemplate}
class NodeRect extends StatelessWidget {
  /// {@macro node_rect}
  const NodeRect({
    Key? key,
    this.label,
    this.score,
  }) : super(key: key);

  /// Name of the classified label.
  final String? label;

  /// Score of the classified label.
  final double? score;

  bool get bothNull => label == null && score == null;

  bool get isRoot => label == 'root';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175.0,
      height: 120.0,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        boxShadow: const [
          BoxShadow(
            color: SketchColors.black,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Center(
        child: Text(
          bothNull
              ? ''
              : isRoot
                  ? label!
                  : '$label\n($score)',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: SketchColors.white,
          ),
        ),
      ),
    );
  }
}
