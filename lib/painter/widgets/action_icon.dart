import 'package:fluent_ui/fluent_ui.dart';

class ActionIcon extends StatelessWidget {
  const ActionIcon(
    this.iconData, {
    Key? key,
  }) : super(key: key);

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
