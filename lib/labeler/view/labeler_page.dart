import 'dart:ui';

import 'package:built_collection/built_collection.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:fluent_ui/fluent_ui.dart' hide showDialog, Tooltip;
import 'package:flutter/material.dart' hide Colors, ButtonThemeData, IconButton;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibm_apis/visual_recognition/model/class_result.dart';
import 'package:sketch_vision_app/app/locale/locale.dart';
import 'package:sketch_vision_app/hierarchy/view/hierarchy_page.dart';
import 'package:sketch_vision_app/labeler/bloc/labeler_bloc.dart';
import 'package:sketch_vision_app/labeler/helpers/classifier_sorter.dart';
import 'package:sketch_vision_app/labeler/view/response_dialog.dart';
import 'package:sketch_vision_app/labeler/widgets/label_list.dart';
import 'package:sketch_vision_app/labeler/widgets/skeleton_list.dart';
import 'package:sketch_vision_app/translator/view/translator_page.dart';

/// {@template labeler_view}
/// Displays the typical wrapping widget for showing labels, with
/// [RoundedRectangleBorder] shape.
///
/// Used for showing the content of [LabelerPage], or [PainterMenu] as well.
/// {@endtemplate}
class LabelerView extends StatelessWidget {
  /// {@macro labeler_view}
  const LabelerView({
    Key? key,
    required this.page,
  }) : super(key: key);

  /// A page/content which should be shown inside the view.
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        color: Colors.white,
        child: page,
      ),
    );
  }
}

/// {@template labeler_page}
/// The content which should be shown inside the [LabelerView], consists
/// of list of labels and scores,
/// or placeholders if it is [LabelerLoading] state,
/// or info dialogs if it is [LabelerError] state.
/// {@endtemplate}
class LabelerPage extends StatelessWidget {
  /// {@macro labeler_page}
  const LabelerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LabelerBloc, LabelerState>(
      builder: (context, state) {
        if (state is LabelerLoading) {
          return const SkeletonList(isLoading: true);
        }

        if (state is LabelerError) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InfoBar(
                  isLong: true,
                  title: const Text(Locale_cs.error),
                  content: Text(state.message),
                  severity: InfoBarSeverity.error,
                ),
                const SizedBox(height: 10.0),
                const InfoBar(
                  title: Text(Locale_cs.note),
                  content: Text(Locale_cs.fake_data),
                  severity: InfoBarSeverity.info,
                ),
              ],
            ),
          );
        }

        if (state is LabelerSuccess) {
          final data = state.classifiedImage.classifiers;
          final sorted = sortByScore(data);
          return LabelList(
            data: sorted,
            menu: _buildMenu(context, sorted),
          );
        }

        return Stack(
          children: [
            const IgnorePointer(child: SkeletonList(isLoading: false)),
            Center(child: _buildClassifyButton(context)),
          ],
        );
      },
    );
  }

  Widget _buildMenu(
    BuildContext context,
    BuiltList<ClassResult> classes,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 18.0,
        horizontal: 15.0,
      ),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          Tooltip(
            message: Locale_cs.translate,
            child: IconButton(
              icon: const Icon(CarbonIcons.translate),
              onPressed: () {
                Navigator.of(context).push(TranslatorPage.route(classes));
              },
            ),
          ),
          const SizedBox(width: 5.0),
          Tooltip(
            message: Locale_cs.json_response,
            child: IconButton(
              icon: const Icon(CarbonIcons.script),
              onPressed: () {
                Navigator.of(context).push(ResponseDialog.route(classes));
              },
            ),
          ),
          const SizedBox(width: 5.0),
          Tooltip(
            message: Locale_cs.hierarchy,
            child: IconButton(
              icon: const Icon(CarbonIcons.tree_view),
              onPressed: () {
                Navigator.of(context).push(HierarchyPage.route(classes));
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClassifyButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.read<LabelerBloc>().add(LabelerClassified()),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            late Color color;
            if (states.contains(MaterialState.pressed)) {
              color = Colors.blue.withOpacity(0.85);
            } else if (states.contains(MaterialState.hovered)) {
              color = Colors.blue.withOpacity(0.85);
            } else {
              color = Colors.blue;
            }
            return color;
          },
        ),
      ),
      child: const Text(Locale_cs.classify),
    );
  }
}
