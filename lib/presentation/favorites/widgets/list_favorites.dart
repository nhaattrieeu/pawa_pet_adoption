import 'package:flutter/cupertino.dart';
import 'package:pawa_pet_adoption/presentation/favorites/widgets/favorite_item.dart';

import '../../../domain/entities/pet.dart';

class ListFavorites extends StatelessWidget {
  const ListFavorites({super.key, required this.pets});

  final List<Pet> pets;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 18,
        crossAxisSpacing: 18,
        childAspectRatio: 3 / 4,
      ),
      itemCount: pets.length,
      itemBuilder: (context, index) {
        var pet = pets[index];
        return FavoriteItem(pet: pet);
      },
    );
  }
}
