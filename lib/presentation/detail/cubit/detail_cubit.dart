import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pawa_pet_adoption/domain/entities/pet_detail.dart';
import 'package:pawa_pet_adoption/domain/usecases/get_detail_usecase.dart';

part 'detail_state.dart';

class DetailCubit extends Cubit<DetailState> {
  DetailCubit(this._getDetailUsecase) : super(DetailInitial());

  final GetDetailUsecase _getDetailUsecase;

  Future<void> getDetailData(String id) async {
    emit(DetailLoading());
    final failureOrData = await _getDetailUsecase(id);
    failureOrData.fold(
      (failure) => emit(DetailError()),
      (data) => emit(DetailSuccess(petDetail: data)),
    );
  }
}
