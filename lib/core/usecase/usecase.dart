import 'package:dartz/dartz.dart';
import 'package:pawa_pet_adoption/core/errors/failures.dart';

abstract class UseCaseWithParams<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class UseCaseWithoutParams<Type> {
  Future<Either<Failure, Type>> call();
}
