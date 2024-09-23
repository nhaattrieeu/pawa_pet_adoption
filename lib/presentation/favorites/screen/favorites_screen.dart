import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pawa_pet_adoption/core/constants/colors.dart';
import 'package:pawa_pet_adoption/presentation/favorites/cubit/favorites_cubit.dart';
import 'package:pawa_pet_adoption/presentation/favorites/widgets/list_favorites.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<FavoritesCubit>().getFavoritesData();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: CustomScrollView(
          slivers: [
            CupertinoSliverRefreshControl(
              onRefresh: () {
                return context.read<FavoritesCubit>().getFavoritesData();
              },
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: Text(
                  "Favorites",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
              ),
            ),
            BlocBuilder<FavoritesCubit, FavoritesState>(
              builder: (context, state) {
                if (state.pets.isEmpty) {
                  return const SliverToBoxAdapter(child: Placeholder());
                } else {
                  return ListFavorites(pets: state.pets);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
