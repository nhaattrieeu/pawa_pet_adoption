import 'package:dartz/dartz.dart';
import 'package:pawa_pet_adoption/core/errors/failures.dart';
import 'package:pawa_pet_adoption/core/usecase/usecase.dart';
import 'package:pawa_pet_adoption/domain/entities/pet_detail.dart';
import 'package:pawa_pet_adoption/domain/repositories/home_repository.dart';

class GetDetailUsecase implements UseCaseWithParams<PetDetail, String> {
  final HomeRepository repository;

  GetDetailUsecase({required this.repository});

  @override
  Future<Either<Failure, PetDetail>> call(String params) async {
    return await repository.getDetail(params);
  }
}
