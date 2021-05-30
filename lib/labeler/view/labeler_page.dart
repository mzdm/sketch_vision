import 'dart:ui';

import 'package:built_collection/built_collection.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:fluent_ui/fluent_ui.dart' hide showDialog, Tooltip;
import 'package:flutter/material.dart' hide Colors, ButtonThemeData, IconButton;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibm_apis/visual_recognition/model/class_result.dart';
import 'package:ibm_apis/visual_recognition/model/classifier_result.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sketch_vision_app/app/locale/locale.dart';
import 'package:sketch_vision_app/app/theme/colors.dart';
import 'package:sketch_vision_app/hierarchy/view/hierarchy_page.dart';
import 'package:sketch_vision_app/labeler/bloc/labeler_bloc.dart';

class LabelerPage extends StatelessWidget {
  const LabelerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        color: Colors.white,
        child: BlocConsumer<LabelerBloc, LabelerState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is LabelerLoading) {
              return _buildListLabelPlaceholders(true);
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
              return _buildListLabel(context, data);
            }

            return Stack(
              children: [
                IgnorePointer(child: _buildListLabelPlaceholders(false)),
                Center(child: _buildClassifyButton(context)),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildListLabel(
    BuildContext context,
    BuiltList<ClassifierResult> data,
  ) {
    if (data.isEmpty) {
      return const SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text(Locale_cs.no_labels),
        ),
      );
    }

    final builder = data.first.classes.toBuilder()
      ..sort((a, b) => a.score.compareTo(b.score))
      ..reverse();
    final classes = builder.build();

    return ListView.builder(
      itemCount: classes.length,
      itemBuilder: (context, index) {
        if (classes.isEmpty) {
          return const SizedBox();
        }

        final labelItem = _buildLabelItem(
          name: classes.elementAt(index).class_,
          score: classes.elementAt(index).score,
        );

        if (index == 0) {
          return Column(
            children: [
              _buildMenu(context, classes),
              labelItem,
            ],
          );
        }
        return labelItem;
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
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 5.0),
          Tooltip(
            message: Locale_cs.json_response,
            child: IconButton(
              icon: const Icon(CarbonIcons.script),
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 5.0),
          Tooltip(
            message: Locale_cs.hierarchy,
            child: IconButton(
              icon: const Icon(CarbonIcons.tree_view),
              onPressed: () {
                Navigator.of(context).push(HieararchyPage.route(classes));
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLabelItem({
    required String name,
    required double score,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 18.0,
        horizontal: 15.0,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: 20,
                  child: Text(name),
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: SizedBox(
                    height: 20,
                    child: Text(score.toString()),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 3.0),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: SizedBox(
                width: double.infinity,
                child: ProgressBar(
                  value: (score * 100).clamp(0, 100),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListLabelPlaceholders(bool isLoading) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return isLoading
            ? Shimmer.fromColors(
                baseColor: SketchColors.shimmer_base,
                highlightColor: SketchColors.shimmer_highlight,
                child: _buildSkeletonItem(),
              )
            : BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 2.0,
                  sigmaY: 2.0,
                ),
                child: _buildSkeletonItem(),
              );
      },
    );
  }

  Widget _buildSkeletonItem() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 3,
                child: Container(
                  height: 15,
                  color: Colors.grey[90],
                ),
              ),
              const SizedBox(width: 10.0),
              Flexible(
                child: Container(
                  height: 15,
                  color: Colors.grey[90],
                ),
              ),
            ],
          ),
          const SizedBox(height: 5.0),
          Container(
            height: 15,
            color: Colors.grey[90],
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
