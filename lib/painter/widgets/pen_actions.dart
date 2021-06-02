import 'package:carbon_icons/carbon_icons.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:sketch_vision_app/app/locale/locale.dart';
import 'package:sketch_vision_app/painter/models/pen_type.dart';
import 'package:sketch_vision_app/painter/widgets/color_picker.dart';
import 'package:sketch_vision_app/painter/widgets/pen_action.dart';
import 'package:sketch_vision_app/painter/widgets/thickness_slider.dart';

class PainterPenActions extends StatelessWidget {
  const PainterPenActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            PenAction(
              tooltip: Locale_cs.pen_eraser,
              actionPenType: PenType.eraser,
              iconData: CarbonIcons.erase,
            ),
            SizedBox(width: 5.0),
            PenAction(
              tooltip: Locale_cs.pen_paint_brush,
              actionPenType: PenType.paint_brush,
              iconData: CarbonIcons.paint_brush,
            ),
            SizedBox(width: 10.0),
            ColorButtonPicker(),
          ],
        ),
        const SizedBox(height: 50.0),
        const ThicknessSlider(),
        const SizedBox(height: 70.0),
      ],
    );
  }
}
