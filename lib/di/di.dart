import 'package:get_it/get_it.dart';
import 'package:pawa_pet_adoption/di/common.dart';
import 'package:pawa_pet_adoption/di/favorites.dart';
import 'package:pawa_pet_adoption/di/home.dart';

import 'detail.dart';

final sl = GetIt.instance;

Future<void> init() async {
  registerCommonDependence();
  registerHomeFeature();
  registerFavoritesFeature();
  registerDetailFeature();
}
