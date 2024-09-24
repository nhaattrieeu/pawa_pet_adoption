part of 'detail_cubit.dart';

sealed class DetailState extends Equatable {
  const DetailState();
}

final class DetailInitial extends DetailState {
  @override
  List<Object> get props => [];
}

final class DetailLoading extends DetailState {
  @override
  List<Object> get props => [];
}

final class DetailSuccess extends DetailState {
  final PetDetail petDetail;

  const DetailSuccess({required this.petDetail});

  @override
  List<Object> get props => [petDetail];
}

final class DetailError extends DetailState {
  @override
  List<Object> get props => [];
}
