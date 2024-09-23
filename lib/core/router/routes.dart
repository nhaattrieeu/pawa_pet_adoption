import 'package:flutter/widgets.dart';
import 'package:pawa_pet_adoption/presentation/detail/screen/detail_screen.dart';
import 'package:pawa_pet_adoption/presentation/main/screens/main_screen.dart';

final Map<String, WidgetBuilder> routes = {
  MainScreen.routeName: (context) => const MainScreen(),
  DetailScreen.routeName: (context) => const DetailScreen()
};
