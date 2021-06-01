import 'package:equatable/equatable.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:sketch_vision_app/app/theme/colors.dart';
import 'package:sketch_vision_app/painter/models/pen_type.dart';
import 'package:sketch_vision_app/painter/widgets/thickness_slider.dart';

typedef PathList = List<PointDetail?>;

class PainterDetails extends Equatable {
  const PainterDetails({
    this.backgroundColor = SketchColors.white,
    this.penType = PenType.paint_brush,
    this.paintColor = SketchColors.black,
    this.thickness = initialThicknessSliderValue,
    this.pathList = const <PointDetail>[],
  });

  final Color backgroundColor;
  final PenType penType;
  final Color paintColor;
  final double thickness;
  final PathList pathList;

  PainterDetails copyWith({
    double? thickness,
    PenType? penType,
    Color? paintColor,
    Color? backgroundColor,
    PathList? pathList,
  }) {
    return PainterDetails(
      thickness: thickness ?? this.thickness,
      penType: penType ?? this.penType,
      paintColor: paintColor ?? this.paintColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      pathList: pathList ?? this.pathList,
    );
  }

  @override
  List<Object> get props =>
      [thickness, penType, paintColor, backgroundColor, pathList];
}

class PointDetail extends Equatable {
  final Paint paint;
  final Offset point;

  const PointDetail({
    required this.point,
    required this.paint,
  });

  @override
  List<Object> get props => [paint, point];
}
