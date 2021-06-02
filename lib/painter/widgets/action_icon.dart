import 'package:fluent_ui/fluent_ui.dart';
import 'package:sketch_vision_app/painter/view/painter_menu.dart';

/// {@template action_icon}
/// An action in the [PainterMenu].
/// {@endtemplate}
class ActionIcon extends StatelessWidget {
  /// {@macro action_icon}
  const ActionIcon(
    this.iconData, {
    Key? key,
  }) : super(key: key);

  /// [Icon]'s [IconData] for [ActionIcon].
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      color: Colors.black,
      size: 30.0,
    );
  }
}
