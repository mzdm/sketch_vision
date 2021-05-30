import 'dart:ui';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sketch_vision_app/app/theme/colors.dart';
import 'package:sketch_vision_app/labeler/widgets/skeleton_item.dart';

class SkeletonList extends StatelessWidget {
  const SkeletonList({
    Key? key,
    required this.isLoading,
  }) : super(key: key);

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return isLoading
            ? Shimmer.fromColors(
                baseColor: SketchColors.shimmer_base,
                highlightColor: SketchColors.shimmer_highlight,
                child: const SkeletonItem(),
              )
            : BackdropFilter(
                filter: ImageFilter.blur(
                  tileMode: TileMode.mirror,
                  sigmaX: 2.0,
                  sigmaY: 2.0,
                ),
                child: const SkeletonItem(),
              );
      },
    );
  }
}
