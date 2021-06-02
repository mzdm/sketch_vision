import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketch_vision_app/app/locale/locale.dart';
import 'package:sketch_vision_app/image_picker/bloc/image_picker_cubit.dart';
import 'package:sketch_vision_app/labeler/bloc/labeler_bloc.dart';
import 'package:sketch_vision_app/labeler/view/labeler_page.dart';
import 'package:sketch_vision_app/nav_pane/view/result_content.dart';
import 'package:sketch_vision_app/painter/bloc/painter_bloc.dart';
import 'package:sketch_vision_app/painter/models/painter_details.dart';
import 'package:sketch_vision_app/painter/models/pen_type.dart';
import 'package:sketch_vision_app/painter/view/sketch_painter.dart';

/// {@template painter_box}
/// The drawing container/box, which holds the drew image in [SketchPainter]
/// and notifies changes to it.
/// {@endtemplate}
class PainterBox extends StatefulWidget {
  /// {@macro painter_box}
  const PainterBox({
    Key? key,
  }) : super(key: key);

  @override
  _PainterBoxState createState() => _PainterBoxState();
}

class _PainterBoxState extends State<PainterBox> {
  late final ImagePickerCubit imagePickerBloc;
  late final PainterBloc painterBloc;

  @override
  void initState() {
    super.initState();
    imagePickerBloc = context.read<ImagePickerCubit>();
    painterBloc = context.read<PainterBloc>();
  }

  Future<void> save(SketchPainter sketchPainter) async {
    final imageBytes = await sketchPainter.getImage();
    imagePickerBloc.crop(imageBytes!);
  }

  void onPanStart(DragStartDetails start) {
    final tapPos = (context.findRenderObject() as RenderBox)
        .globalToLocal(start.globalPosition);
    final painterDetails = painterBloc.state.painterDetails;
    final pointDetail = PointDetail(
      point: tapPos,
      paint: Paint()
        ..strokeCap = StrokeCap.round
        ..color = painterDetails.penType == PenType.paint_brush
            ? painterDetails.paintColor
            : painterDetails.backgroundColor
        ..strokeWidth = painterBloc.state.painterDetails.thickness,
    );
    painterBloc.add(PainterPathDrew(pointDetail));
  }

  void onPanUpdate(DragUpdateDetails update) {
    final tapPos = (context.findRenderObject() as RenderBox)
        .globalToLocal(update.globalPosition);
    final painterDetails = painterBloc.state.painterDetails;
    final pointDetail = PointDetail(
      point: tapPos,
      paint: Paint()
        ..strokeCap = StrokeCap.round
        ..color = painterDetails.penType == PenType.paint_brush
            ? painterDetails.paintColor
            : painterDetails.backgroundColor
        ..strokeWidth = painterDetails.thickness,
    );
    painterBloc.add(PainterPathDrew(pointDetail));
  }

  void onPanEnd(DragEndDetails end) {
    painterBloc.add(const PainterPathDrew(null));
  }

  @override
  Widget build(BuildContext context) {
    final pathList = context.select(
      (PainterBloc bloc) => bloc.state.painterDetails.pathList,
    );
    final sketchPainter = SketchPainter(pathList: pathList);

    return BlocListener<PainterBloc, PainterState>(
      listener: (_, state) {
        if (state is PainterSave) {
          save(sketchPainter);
        }
      },
      child: BlocListener<ImagePickerCubit, ImagePickerState>(
        listener: (context, state) {
          if (state is ImagePickerCropFinished) {
            Navigator.of(context).push(
              FluentPageRoute(
                builder: (_) => BlocProvider.value(
                  value: imagePickerBloc,
                  child: DoublePageContent(
                    title: Locale_cs.classify,
                    contentLeft: Image.memory(state.imageBytes),
                    contentRight: BlocProvider<LabelerBloc>(
                      create: (_) => LabelerBloc(
                        imagePickerBloc: imagePickerBloc,
                      ),
                      child: const LabelerView(page: LabelerPage()),
                    ),
                  ),
                ),
              ),
            );
          }
        },
        child: Container(
          margin: const EdgeInsets.all(0.0),
          padding: const EdgeInsets.all(0.0),
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: GestureDetector(
            onPanStart: onPanStart,
            onPanUpdate: onPanUpdate,
            onPanEnd: onPanEnd,
            child: LayoutBuilder(
              builder: (_, constraints) {
                sketchPainter.size = constraints.biggest;
                return CustomPaint(
                  willChange: true,
                  size: Size.infinite,
                  painter: sketchPainter,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
