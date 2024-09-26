import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:pawa_pet_adoption/core/constants/colors.dart';
import 'package:pawa_pet_adoption/presentation/home/widgets/pet_item.dart';

import '../../../domain/entities/pet.dart';

class ListPet extends StatelessWidget {
  const ListPet({super.key, required this.title, required this.pets});

  final String title;
  final List<Pet> pets;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
              ),
              CupertinoButton(
                child: const Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            scrollDirection: Axis.horizontal,
            itemCount: pets.length,
            itemBuilder: (context, index) {
              return PetItem(pet: pets[index]);
            },
            separatorBuilder: (context, index) {
              return const Gap(18);
            },
          ),
        ),
        const Gap(18),
      ],
    );
  }
}
