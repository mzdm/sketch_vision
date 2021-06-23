import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketch_vision_app/l10n/helpers/locale.dart';
import 'package:sketch_vision_app/painter/bloc/painter_bloc.dart';

/// {@template color_button_picker}
/// Interactive widget for selecting different [Color]s.
/// {@endtemplate}
class ColorButtonPicker extends StatelessWidget {
  /// {@macro color_button_picker}
  const ColorButtonPicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final painterBloc = context.read<PainterBloc>();
    final paintColor = context.select(
      (PainterBloc bloc) => bloc.state.painterDetails.paintColor,
    );

    return SplitButtonBar(
      buttons: [
        Button(
          onPressed: () async {
            await _colorPickerDialog(
              context,
              painterBloc: painterBloc,
              paintColor: paintColor,
            );
          },
          style: const ButtonThemeData(
            padding: EdgeInsets.all(2.5),
          ),
          builder: (_, __) {
            return Container(
              width: 100.0,
              height: 35.0,
              color: paintColor,
            );
          },
        ),
        Button(
          onPressed: () async {
            await _colorPickerDialog(
              context,
              painterBloc: painterBloc,
              paintColor: paintColor,
            );
          },
          style: const ButtonThemeData(
            padding: EdgeInsets.all(2.0),
          ),
          child: const SizedBox(
            height: 35.0,
            child: Icon(Icons.keyboard_arrow_down),
          ),
        ),
      ],
    );
  }

  Future<bool> _colorPickerDialog(
    BuildContext context, {
    required PainterBloc painterBloc,
    required Color paintColor,
  }) async {
    return ColorPicker(
      color: paintColor,
      onColorChanged: (Color color) {
        painterBloc.add(PainterColorChanged(color));
      },
      borderRadius: 4.0,
      spacing: 5.0,
      runSpacing: 5.0,
      heading: Text(context.l10n.color),
      subheading: Text(context.l10n.color_shade),
      recentColorsSubheading: Text(context.l10n.recently_used),
      showRecentColors: true,
      pickersEnabled: const <ColorPickerType, bool>{
        ColorPickerType.primary: true,
        ColorPickerType.accent: false,
      },
    ).showPickerDialog(
      context,
      constraints: const BoxConstraints(
        minHeight: 480.0,
        minWidth: 300.0,
        maxWidth: 320.0,
      ),
    );
  }
}
