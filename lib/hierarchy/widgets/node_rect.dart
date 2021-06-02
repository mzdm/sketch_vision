import 'package:fluent_ui/fluent_ui.dart';
import 'package:sketch_vision_app/app/theme/colors.dart';

class NodeRect extends StatelessWidget {
  const NodeRect({
    Key? key,
    this.label,
    this.score,
  }) : super(key: key);

  final String? label;
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
