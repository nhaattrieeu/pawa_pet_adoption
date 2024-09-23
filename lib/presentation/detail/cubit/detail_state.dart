part of 'detail_cubit.dart';

sealed class DetailState extends Equatable {
  const DetailState();
}

final class DetailInitial extends DetailState {
  @override
  List<Object> get props => [];
}
