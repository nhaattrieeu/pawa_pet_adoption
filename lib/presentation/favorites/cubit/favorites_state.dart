part of 'favorites_cubit.dart';

enum FavoritesStatus { init, loading, success, error }

class FavoritesState extends Equatable {
  const FavoritesState({required this.status, required this.pets});

  final FavoritesStatus status;
  final List<Pet> pets;

  FavoritesState copyWith({
    FavoritesStatus? status,
    List<Pet>? pets,
  }) {
    return FavoritesState(
      status: status ?? this.status,
      pets: pets ?? this.pets,
    );
  }

  @override
  List<Object> get props => [status, pets];
}
