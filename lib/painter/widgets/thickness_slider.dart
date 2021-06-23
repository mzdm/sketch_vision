import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketch_vision_app/l10n/helpers/locale.dart';
import 'package:sketch_vision_app/painter/bloc/painter_bloc.dart';
import 'package:sketch_vision_app/painter/models/pen_type.dart';

/// The initial value of [Slider].
const initialThicknessSliderValue = 20.0;

/// {@template thickness_slider}
/// [Slider] widget for manipulating the pixel size of the [PenType].
/// {@endtemplate}
class ThicknessSlider extends StatelessWidget {
  /// {@macro thickness_slider}
  const ThicknessSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final painterBloc = context.read<PainterBloc>();
    final thickness = context.select(
      (PainterBloc bloc) => bloc.state.painterDetails.thickness,
    );

    return Container(
      margin: const EdgeInsets.all(8),
      child: Tooltip(
        message: context.l10n.thickness,
        child: Slider(
          min: 0.0,
          max: 40.0,
          label: '${thickness.toInt()} px',
          value: thickness,
          onChanged: (value) {
            painterBloc.add(PainterThicknessChanged(value));
          },
          style: const SliderThemeData(
            useThumbBall: false,
            inactiveColor: Colors.grey,
          ),
        ),
      ),
    );
  }
}
