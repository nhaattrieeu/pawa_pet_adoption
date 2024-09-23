import 'package:pawa_pet_adoption/domain/usecases/get_favorites_usecase.dart';
import 'package:pawa_pet_adoption/presentation/favorites/cubit/favorites_cubit.dart';

import 'di.dart';

void registerFavoritesFeature() {
  //bloc
  sl.registerFactory<FavoritesCubit>(() => FavoritesCubit(sl()));

  //use case
  sl.registerLazySingleton<GetFavoritesUsecase>(
      () => GetFavoritesUsecase(repository: sl()));

  // //repository
  // sl.registerLazySingleton<HomeRepository>(
  //         () => HomeRepositoryImplementation(remoteDataSource: sl()));
  //
  // //data source
  // sl.registerLazySingleton<HomeRemoteDataSource>(
  //         () => HomeRemoteDataSourceImplementation(dio: sl()));
}
