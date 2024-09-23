import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pawa_pet_adoption/domain/usecases/get_favorites_usecase.dart';

import '../../../domain/entities/pet.dart';

part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit(this._getFavoritesUsecase)
      : super(const FavoritesState(status: FavoritesStatus.init, pets: []));

  final GetFavoritesUsecase _getFavoritesUsecase;

  Future<void> getFavoritesData() async {
    emit(state.copyWith(status: FavoritesStatus.loading));
    final failureOrData = await _getFavoritesUsecase();
    failureOrData.fold(
      (failure) => emit(state.copyWith(status: FavoritesStatus.error)),
      (data) =>
          emit(state.copyWith(status: FavoritesStatus.success, pets: data)),
    );
  }
}
