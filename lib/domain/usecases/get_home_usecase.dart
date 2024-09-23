import 'package:dartz/dartz.dart';
import 'package:pawa_pet_adoption/core/errors/failures.dart';
import 'package:pawa_pet_adoption/core/usecase/usecase.dart';
import 'package:pawa_pet_adoption/domain/repositories/home_repository.dart';

import '../entities/pet.dart';

class GetHomeUsecase implements UseCaseWithoutParams<List<Pet>> {
  final HomeRepository repository;

  GetHomeUsecase({required this.repository});

  @override
  Future<Either<Failure, List<Pet>>> call() async {
    return await repository.getHome();
  }
}
