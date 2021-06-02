part of 'painter_bloc.dart';

abstract class PainterEvent extends Equatable {
  const PainterEvent();
}

class PainterPathDrew extends PainterEvent {
  const PainterPathDrew(this.pointDetail);

  final PointDetail? pointDetail;

  @override
  List<Object?> get props => [pointDetail];
}

class PainterPenSelected extends PainterEvent {
  const PainterPenSelected(this.penType);

  final PenType penType;

  @override
  List<Object> get props => [penType];
}

class PainterColorChanged extends PainterEvent {
  const PainterColorChanged(this.color);

  final Color color;

  @override
  List<Object> get props => [color];
}

class PainterThicknessChanged extends PainterEvent {
  const PainterThicknessChanged(this.value);

  final double value;

  @override
  List<Object> get props => [value];
}

class PainterReseted extends PainterEvent {
  @override
  List<Object> get props => [];
}

class PainterUndid extends PainterEvent {
  @override
  List<Object> get props => [];
}

class PainterSaved extends PainterEvent {
  @override
  List<Object> get props => [];
}

