import 'package:carbon_icons/carbon_icons.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketch_vision_app/l10n/helpers/locale.dart';
import 'package:sketch_vision_app/painter/bloc/painter_bloc.dart';
import 'package:sketch_vision_app/painter/view/painter_menu.dart';
import 'package:sketch_vision_app/painter/widgets/action_icon.dart';

/// {@template painter_menu_actions}
/// Top menu of the [PainterMenu], consists of [ActionIcon]s.
/// {@endtemplate}
class PainterMenuActions extends StatelessWidget {
  /// {@macro painter_menu_actions}
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
              message: context.l10n.reset,
              child: IconButton(
                icon: const ActionIcon(CarbonIcons.renew),
                onPressed: () {
                  painterBloc.add(PainterReseted());
                },
              ),
            ),
            const SizedBox(width: 5.0),
            Tooltip(
              message: context.l10n.undo,
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
            message: context.l10n.next,
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
