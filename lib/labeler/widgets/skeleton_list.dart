import 'dart:ui';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sketch_vision_app/app/theme/colors.dart';
import 'package:sketch_vision_app/labeler/view/labeler_page.dart';
import 'package:sketch_vision_app/labeler/widgets/skeleton_item.dart';

/// {@template skeleton_list}
/// Displays a list of placeholders ('skeleton') in the [LabelerPage].
/// {@endtemplate}
class SkeletonList extends StatelessWidget {
  /// {@macro skeleton_list}
  const SkeletonList({
    Key? key,
    required this.isLoading,
  }) : super(key: key);

  /// Whether the data are being fetched so [Shimmer] effect
  /// should be displayed.
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
