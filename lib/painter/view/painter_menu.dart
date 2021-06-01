import 'package:fluent_ui/fluent_ui.dart';
import 'package:sketch_vision_app/painter/widgets/menu_actions.dart';
import 'package:sketch_vision_app/painter/widgets/pen_actions.dart';

class PainterMenu extends StatelessWidget {
  const PainterMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 18.0,
          horizontal: 10.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            PainterMenuActions(),
            PainterPenActions(),
          ],
        ),
      ),
    );
  }
}
