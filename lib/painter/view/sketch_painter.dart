import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:fluent_ui/fluent_ui.dart';
import 'package:sketch_vision_app/painter/models/painter_details.dart';

class SketchPainter extends CustomPainter {
  SketchPainter({
    this.pathList = const <PointDetail>[],
  });

  final PathList pathList;

  Size size = Size.infinite;

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
