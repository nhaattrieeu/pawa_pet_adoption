import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pawa_pet_adoption/domain/usecases/get_home_usecase.dart';

import '../../../domain/entities/pet.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._getHomeUsecase)
      : super(const HomeState(status: HomeStatus.init, pets: []));

  final GetHomeUsecase _getHomeUsecase;

  Future<void> getHomeData() async {
    emit(state.copyWith(status: HomeStatus.loading));
    final failureOrData = await _getHomeUsecase();
    failureOrData.fold(
      (failure) => emit(state.copyWith(status: HomeStatus.error)),
      (data) => emit(state.copyWith(status: HomeStatus.success, pets: data)),
    );
  }
}
