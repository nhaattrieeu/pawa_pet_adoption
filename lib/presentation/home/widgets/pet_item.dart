import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pawa_pet_adoption/core/constants/colors.dart';
import 'package:pawa_pet_adoption/core/constants/icons.dart';
import 'package:pawa_pet_adoption/presentation/detail/screen/detail_screen.dart';

import '../../../domain/entities/pet.dart';

class PetItem extends StatelessWidget {
  const PetItem({super.key, required this.pet});

  final Pet pet;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: () {
        Navigator.of(context).pushNamed(
          DetailScreen.routeName,
          arguments: pet.petId,
        );
      },
      child: SizedBox(
        width: 140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: CachedNetworkImage(
                imageUrl: pet.photo,
                height: 140,
                width: 140,
                fit: BoxFit.cover,
              ),
            ),
            const Gap(10),
            Row(
              children: [
                Flexible(
                  child: Text(
                    pet.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Gap(8),
                SvgPicture.asset(
                  pet.gender == "male" ? AppIcons.icMale : AppIcons.icFemale,
                  width: 16,
                  height: 16,
                ),
              ],
            ),
            const Gap(10),
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.icAddress,
                  width: 16,
                  height: 16,
                ),
                Text(
                  "1.2KM",
                  style: TextStyle(
                    color: AppColors.gray,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Gap(6),
                Container(
                  width: 2,
                  height: 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                    color: AppColors.gray,
                  ),
                ),
                const Gap(6),
                Flexible(
                  child: Text(
                    "Ho Chi Minh",
                    style: TextStyle(
                      color: AppColors.gray,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
