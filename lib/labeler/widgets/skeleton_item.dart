import 'package:fluent_ui/fluent_ui.dart';
import 'package:sketch_vision_app/app/theme/colors.dart';

class SkeletonItem extends StatelessWidget {
  const SkeletonItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 3,
                child: Container(
                  height: 15,
                  color: SketchColors.skeleton_item,
                ),
              ),
              const SizedBox(width: 10.0),
              Flexible(
                child: Container(
                  height: 15,
                  color: SketchColors.skeleton_item,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5.0),
          Container(
            height: 15,
            color: SketchColors.skeleton_item,
          ),
        ],
      ),
    );
  }
}
