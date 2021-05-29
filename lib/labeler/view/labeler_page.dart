import 'dart:ui';

import 'package:fluent_ui/fluent_ui.dart' hide showDialog;
import 'package:flutter/material.dart' hide Colors, ButtonThemeData;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sketch_vision_app/app/locale/locale.dart';
import 'package:sketch_vision_app/app/theme/colors.dart';
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
              // return _buildListLabelPlaceholders(true);
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

  Widget _buildListLabelPlaceholders(bool isLoading) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return isLoading
            ? Shimmer.fromColors(
                baseColor: SketchColors.shimmer_base,
                highlightColor: SketchColors.shimmer_highlight,
                child: _buildSkeleton(),
              )
            : BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 2.0,
                  sigmaY: 2.0,
                ),
                child: _buildSkeleton(),
              );
      },
    );
  }

  Widget _buildSkeleton() {
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
