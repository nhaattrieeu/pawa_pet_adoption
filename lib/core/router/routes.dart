import 'package:flutter/widgets.dart';
import 'package:pawa_pet_adoption/presentation/auth/screen/sign_in_screen.dart';
import 'package:pawa_pet_adoption/presentation/detail/screen/detail_screen.dart';
import 'package:pawa_pet_adoption/presentation/main/screens/main_screen.dart';

import '../../presentation/auth/screen/sign_up_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => const SignInScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  MainScreen.routeName: (context) => const MainScreen(),
  DetailScreen.routeName: (context) => const DetailScreen()
};
