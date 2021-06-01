import 'package:carbon_icons/carbon_icons.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketch_vision_app/app/locale/locale.dart';
import 'package:sketch_vision_app/painter/bloc/painter_bloc.dart';
import 'package:sketch_vision_app/painter/widgets/action_icon.dart';

class PainterMenuActions extends StatelessWidget {
  const PainterMenuActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final painterBloc = context.read<PainterBloc>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          children: [
            Tooltip(
              message: Locale_cs.reset,
              child: IconButton(
                icon: const ActionIcon(CarbonIcons.renew),
                onPressed: () {
                  painterBloc.add(PainterReseted());
                },
              ),
            ),
            const SizedBox(width: 5.0),
            Tooltip(
              message: Locale_cs.undo,
              child: IconButton(
                icon: const ActionIcon(CarbonIcons.undo),
                onPressed: () {
                  painterBloc.add(PainterUndid());
                },
              ),
            ),
          ],
        ),
        Flexible(
          child: Tooltip(
            message: Locale_cs.next,
            child: IconButton(
              icon: const ActionIcon(CarbonIcons.arrow_right),
              onPressed: () {
                painterBloc.add(PainterSaved());
              },
            ),
          ),
        ),
      ],
    );
  }
}