import 'package:dartz/dartz.dart';
import 'package:pawa_pet_adoption/core/errors/failures.dart';
import 'package:pawa_pet_adoption/core/usecase/usecase.dart';
import 'package:pawa_pet_adoption/domain/repositories/home_repository.dart';

import '../entities/pet.dart';

class GetFavoritesUsecase implements UseCaseWithoutParams<List<Pet>> {
  GetFavoritesUsecase({required this.repository});

  final HomeRepository repository;

  @override
  Future<Either<Failure, List<Pet>>> call() async {
    return await repository.getFavorites();
  }
}
