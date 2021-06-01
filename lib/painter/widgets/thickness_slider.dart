import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketch_vision_app/app/locale/locale.dart';
import 'package:sketch_vision_app/painter/bloc/painter_bloc.dart';

const initialThicknessSliderValue = 20.0;

class ThicknessSlider extends StatelessWidget {
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
        message: Locale_cs.thickness,
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