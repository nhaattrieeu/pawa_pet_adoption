import 'package:flutter/cupertino.dart';
import 'package:pawa_pet_adoption/core/constants/colors.dart';
import 'package:pawa_pet_adoption/core/utils/permission_handle.dart';
import 'package:pawa_pet_adoption/presentation/maps/presentation/maps_screen.dart';
import 'package:pawa_pet_adoption/presentation/profile/screen/profile_screen.dart';

import '../../favorites/screen/favorites_screen.dart';
import '../../home/screen/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  static String routeName = "/main";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    req();
    super.initState();
  }

  void req() async {
    await PermissionHandle.checkLocationPermission();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: AppColors.primaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.map),
            label: "Maps",
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.square_favorites_alt),
              label: "Favorites"),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: "Account",
          ),
        ],
      ),
      tabBuilder: (context, index) {
        if (index == 0) {
          return const HomeScreen();
        } else if (index == 1) {
          return const MapSample();
        } else if (index == 2) {
          return const FavoritesScreen();
        } else {
          return const ProfileScreen();
        }
      },
    );
  }
}
