import 'package:dartz/dartz.dart';
import 'package:pawa_pet_adoption/core/errors/exceptions.dart';
import 'package:pawa_pet_adoption/core/errors/failures.dart';
import 'package:pawa_pet_adoption/data/datasources/home_remote_data_source.dart';
import 'package:pawa_pet_adoption/domain/entities/pet.dart';
import 'package:pawa_pet_adoption/domain/repositories/home_repository.dart';

class HomeRepositoryImplementation implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImplementation({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<Pet>>> getHome() async {
    try {
      return Right(await remoteDataSource.getHome());
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Pet>>> getFavorites() async {
    try {
      return Right(await remoteDataSource.getHome());
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
