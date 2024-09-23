part of 'home_cubit.dart';

enum HomeStatus { init, loading, success, error }

class HomeState extends Equatable {
  const HomeState({required this.status, required this.pets});

  final HomeStatus status;
  final List<Pet> pets;

  HomeState copyWith({
    HomeStatus? status,
    List<Pet>? pets,
  }) {
    return HomeState(
      status: status ?? this.status,
      pets: pets ?? this.pets,
    );
  }

  @override
  List<Object> get props => [status, pets];
}
