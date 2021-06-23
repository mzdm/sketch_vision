import 'package:carbon_icons/carbon_icons.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:sketch_vision_app/l10n/helpers/locale.dart';
import 'package:sketch_vision_app/painter/models/pen_type.dart';
import 'package:sketch_vision_app/painter/view/painter_menu.dart';
import 'package:sketch_vision_app/painter/widgets/color_picker.dart';
import 'package:sketch_vision_app/painter/widgets/pen_action.dart';
import 'package:sketch_vision_app/painter/widgets/thickness_slider.dart';

/// {@template painter_pen_actions}
/// Displays the bottom part of [PainterMenu],
/// consists of [PenAction]s, [ColorButtonPicker] and [ThicknessSlider].
/// {@endtemplate}
class PainterPenActions extends StatelessWidget {
  /// {@macro painter_pen_actions}
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
          children: [
            PenAction(
              tooltip: context.l10n.pen_eraser,
              actionPenType: PenType.eraser,
              iconData: CarbonIcons.erase,
            ),
            const SizedBox(width: 5.0),
            PenAction(
              tooltip: context.l10n.pen_paint_brush,
              actionPenType: PenType.paint_brush,
              iconData: CarbonIcons.paint_brush,
            ),
            const SizedBox(width: 10.0),
            const ColorButtonPicker(),
          ],
        ),
        const SizedBox(height: 50.0),
        const ThicknessSlider(),
        const SizedBox(height: 70.0),
      ],
    );
  }
}
