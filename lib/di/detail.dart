import 'package:pawa_pet_adoption/domain/usecases/get_detail_usecase.dart';
import 'package:pawa_pet_adoption/presentation/detail/cubit/detail_cubit.dart';

import 'di.dart';

void registerDetailFeature() {
  //bloc
  sl.registerFactory<DetailCubit>(() => DetailCubit(sl()));

  //use case
  sl.registerLazySingleton<GetDetailUsecase>(
      () => GetDetailUsecase(repository: sl()));

  // //repository
  // sl.registerLazySingleton<HomeRepository>(
  //         () => HomeRepositoryImplementation(remoteDataSource: sl()));
  //
  // //data source
  // sl.registerLazySingleton<HomeRemoteDataSource>(
  //         () => HomeRemoteDataSourceImplementation(dio: sl()));
}
