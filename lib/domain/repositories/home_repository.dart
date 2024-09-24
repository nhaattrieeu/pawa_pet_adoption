import 'package:dartz/dartz.dart';
import 'package:pawa_pet_adoption/core/errors/failures.dart';
import 'package:pawa_pet_adoption/domain/entities/pet_detail.dart';

import '../entities/pet.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<Pet>>> getHome();

  Future<Either<Failure, List<Pet>>> getFavorites();

  Future<Either<Failure, PetDetail>> getDetail(String id);
}
