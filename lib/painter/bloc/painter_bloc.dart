import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:sketch_vision_app/painter/models/painter_details.dart';
import 'package:sketch_vision_app/painter/models/pen_type.dart';

part 'painter_event.dart';
part 'painter_state.dart';

class PainterBloc extends Bloc<PainterEvent, PainterState> {
  PainterBloc() : super(const PainterState(PainterDetails()));

  @override
  Stream<PainterState> mapEventToState(
    PainterEvent event,
  ) async* {
    final painterDetails = state.painterDetails;

    if (event is PainterPenSelected) {
      yield state.copyWith(painterDetails.copyWith(
        penType: event.penType,
      ));
    }

    if (event is PainterPathDrew) {
      final pathList = painterDetails.pathList;
      yield state.copyWith(painterDetails.copyWith(
        pathList: List.of(pathList)..add(event.pointDetail),
      ));
    }

    if (event is PainterThicknessChanged) {
      yield state.copyWith(painterDetails.copyWith(
        thickness: event.value,
      ));
    }

    if (event is PainterColorChanged) {
      yield state.copyWith(painterDetails.copyWith(
        paintColor: event.color,
      ));
    }

    if (event is PainterReseted) {
      yield const PainterState(PainterDetails());
    }

    if (event is PainterUndid) {
      final pathList = painterDetails.pathList;
      final lastPathIndex = pathList.lastIndexWhere((e) => e != null) - 1;
      if (lastPathIndex >= 0) {
        final subList = List.of(pathList.sublist(0, lastPathIndex));
        yield state.copyWith(
          painterDetails.copyWith(
            pathList: subList..add(null),
          ),
        );
      }
    }

    if (event is PainterSaved) {
      yield PainterSave(painterDetails);
      yield PainterState(painterDetails);
    }
  }
}
