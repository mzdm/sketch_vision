import 'dart:ui';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide Colors, ButtonThemeData;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketch_vision_app/app/locale/locale.dart';
import 'package:sketch_vision_app/labeler/bloc/labeler_bloc.dart';

class LabelerPage extends StatelessWidget {
  const LabelerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LabelerBloc, LabelerState>(
      listener: (context, state) {
        if (state is LabelerSucess) {

        }
      },
      child: Card(
        elevation: 1.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [
              IgnorePointer(child: _buildLabelsPlaceholder()),
              Center(child: _buildClassifyButton(context))
            ],
          ),
        ),
      ),
    );
  }

  ListView _buildLabelsPlaceholder() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 2.0,
            sigmaY: 2.0,
          ),
          child: Padding(
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
          ),
        );
      },
    );
  }

  ElevatedButton _buildClassifyButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<LabelerBloc>().add(LabelerClassified());
      },
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
      child: Text(Locale_cs.classify),
    );
  }
}
