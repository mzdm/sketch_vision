import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketch_vision_app/app/theme/colors.dart';
import 'package:sketch_vision_app/painter/bloc/painter_bloc.dart';
import 'package:sketch_vision_app/painter/models/pen_type.dart';
import 'package:sketch_vision_app/painter/widgets/action_icon.dart';

/// {@template pen_action}
/// An action for [PenType], holding selection selection state.
/// {@endtemplate}
class PenAction extends StatelessWidget {
  /// {@macro pen_action}
  const PenAction({
    Key? key,
    required this.tooltip,
    required this.actionPenType,
    required this.iconData,
  }) : super(key: key);

  /// The [Tooltip] message when hovered.
  final String tooltip;

  /// [PenType] type.
  final PenType actionPenType;

  /// [IconData] of an [Icon].
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    final painterBloc = context.read<PainterBloc>();
    final penType = context.select(
      (PainterBloc bloc) => bloc.state.painterDetails.penType,
    );

    return Tooltip(
      message: tooltip,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            width: 36.0,
            height: 36.0,
            color: penType == actionPenType
                ? SketchColors.pen_action_pressed
                : Colors.white,
          ),
          penType == actionPenType
              ? ActionIcon(iconData)
              : Button.icon(
                  onPressed: () {
                    painterBloc.add(PainterPenSelected(actionPenType));
                  },
                  style: const ButtonThemeData(
                    padding: EdgeInsets.all(0),
                  ),
                  icon: ActionIcon(iconData),
                ),
        ],
      ),
    );
  }
}
