import 'package:equatable/equatable.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:sketch_vision_app/app/theme/colors.dart';
import 'package:sketch_vision_app/painter/models/pen_type.dart';
import 'package:sketch_vision_app/painter/widgets/thickness_slider.dart';

/// List of [PointDetail].
typedef PathList = List<PointDetail?>;

/// {@template painter_details}
/// Holds the configuration/state of current drawing.
/// {@endtemplate}
class PainterDetails extends Equatable {
  /// {@macro painter_details}
  const PainterDetails({
    this.backgroundColor = SketchColors.white,
    this.penType = PenType.paint_brush,
    this.paintColor = SketchColors.black,
    this.thickness = initialThicknessSliderValue,
    this.pathList = const <PointDetail>[],
  });

  /// Background color of the sketch drawing. Defaults to `white` [Color].
  ///
  /// Cannot be changed currently, but it is used as a color for the eraser
  /// for erasing the paths in [PathList].
  ///
  /// TODO: Add a new configuration to change backgroundColor.
  final Color backgroundColor;

  /// Currently chosen [PenType].
  ///
  /// Defaults to [PenType.paint_brush].
  final PenType penType;

  /// The color of the [PenType] drawing path.
  ///
  /// Defaults to `black` [Color].
  final Color paintColor;

  /// The `thickness` of the [PenType] drawing/erasing path.
  ///
  /// Defaults to [initialThicknessSliderValue].
  final double thickness;

  /// List of drew paths.
  ///
  /// Defaults to empty list (no paths drew).
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

/// {@template point_detail}
/// A detail of the single point in the [PathList].
///
/// Holds the 2D coordination position ([Offset]) and
/// [Paint] details ([Color], [StrokeCap] and `thickness`).
/// {@endtemplate}
class PointDetail extends Equatable {
  /// {@macro point_detail}
  const PointDetail({
    required this.point,
    required this.paint,
  });

  /// [Paint] details: [Color], [StrokeCap] and `thickness`.
  final Paint paint;

  /// 2D coordination position.
  final Offset point;

  @override
  List<Object> get props => [paint, point];
}
