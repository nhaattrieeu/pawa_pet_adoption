import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawa_pet_adoption/core/constants/colors.dart';
import 'package:pawa_pet_adoption/core/router/routes.dart';
import 'package:pawa_pet_adoption/presentation/detail/cubit/detail_cubit.dart';
import 'package:pawa_pet_adoption/presentation/favorites/cubit/favorites_cubit.dart';
import 'package:pawa_pet_adoption/presentation/main/screens/main_screen.dart';

import '../../di/di.dart';
import '../../presentation/home/cubit/home_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeCubit(sl())),
        BlocProvider(create: (context) => FavoritesCubit(sl())),
        BlocProvider(create: (context) => DetailCubit(sl())),
      ],
      child: CupertinoApp(
        theme: CupertinoThemeData(
            brightness: Brightness.light,
            primaryColor: AppColors.primaryColor,
            textTheme: CupertinoTextThemeData(textStyle: GoogleFonts.roboto())),
        routes: routes,
        home: const MainScreen(),
      ),
    );
  }
}
