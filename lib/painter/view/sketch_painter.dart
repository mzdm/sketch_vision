import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:fluent_ui/fluent_ui.dart';
import 'package:sketch_vision_app/painter/models/painter_details.dart';

/// {@template sketch_painter}
/// The drawing container, where painting on [Canvas] happens.
/// {@endtemplate}
class SketchPainter extends CustomPainter {
  /// {@macro sketch_painter}
  SketchPainter({
    this.pathList = const <PointDetail>[],
  });

  /// List of [PointDetail] to be drew.
  final PathList pathList;

  /// The size of the drawing region.
  Size size = Size.infinite;

  /// Returns the view of the Sketch drawing region as [Uint8List].
  Future<Uint8List?> getImage() async {
    final pictureRecorder = ui.PictureRecorder();
    paint(Canvas(pictureRecorder), size);
    final picture = pictureRecorder.endRecording();
    final image = await picture.toImage(
      size.width.toInt(),
      size.height.toInt(),
    );
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    return byteData?.buffer.asUint8List();
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.saveLayer(
      Offset.zero & Size(size.width, size.height),
      Paint(),
    );
    for (var i = 0; i < pathList.length - 1; i++) {
      final point1 = pathList[i];
      final point2 = pathList[i + 1];
      if (point1 != null && point2 != null) {
        canvas.drawLine(point1.point, point2.point, point1.paint);
      }
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
