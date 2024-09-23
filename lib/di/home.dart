import 'package:pawa_pet_adoption/data/datasources/home_remote_data_source.dart';
import 'package:pawa_pet_adoption/data/repositories/home_repository_implementation.dart';
import 'package:pawa_pet_adoption/domain/repositories/home_repository.dart';
import 'package:pawa_pet_adoption/domain/usecases/get_home_usecase.dart';
import 'package:pawa_pet_adoption/presentation/home/cubit/home_cubit.dart';

import 'di.dart';

void registerHomeFeature() {
  //bloc
  sl.registerFactory<HomeCubit>(() => HomeCubit(sl()));

  //use case
  sl.registerLazySingleton<GetHomeUsecase>(
      () => GetHomeUsecase(repository: sl()));

  //repository
  sl.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImplementation(remoteDataSource: sl()));

  //data source
  sl.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImplementation(dio: sl()));
}
