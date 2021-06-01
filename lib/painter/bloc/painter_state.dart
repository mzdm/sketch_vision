part of 'painter_bloc.dart';

class PainterState extends Equatable {
  const PainterState(
    this.painterDetails,
  );

  final PainterDetails painterDetails;

  PainterState copyWith(
    PainterDetails? painterDetails,
  ) {
    return PainterState(
      painterDetails ?? this.painterDetails,
    );
  }

  @override
  List<Object> get props => [painterDetails];
}

class PainterSave extends PainterState {
  const PainterSave(
    PainterDetails painterDetails,
  ) : super(painterDetails);

  @override
  List<Object> get props => [painterDetails];
}
