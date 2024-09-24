import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pawa_pet_adoption/domain/entities/pet_detail.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/icons.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key, required this.petDetail});

  final PetDetail petDetail;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width,
                    height: width - 36,
                    child: PageView.builder(
                      itemCount: petDetail.photos.length,
                      itemBuilder: (context, index) {
                        final path = petDetail.photos[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: CachedNetworkImage(
                              imageUrl: path,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Gap(24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          petDetail.name,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                          ),
                        ),
                        const Gap(12),
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
                        const Gap(18),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 110,
                              height: 80,
                              decoration: BoxDecoration(
                                color: AppColors.whiteGray,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Gender",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.gray,
                                    ),
                                  ),
                                  const Gap(6),
                                  Text(
                                    petDetail.gender == "male"
                                        ? "Male"
                                        : "Female",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 110,
                              height: 80,
                              decoration: BoxDecoration(
                                color: AppColors.whiteGray,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Age",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.gray,
                                    ),
                                  ),
                                  const Gap(6),
                                  Text(
                                    petDetail.age.toString(),
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 110,
                              height: 80,
                              decoration: BoxDecoration(
                                color: AppColors.whiteGray,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Size",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.gray,
                                    ),
                                  ),
                                  const Gap(6),
                                  Text(
                                    petDetail.size == "s"
                                        ? "Small"
                                        : petDetail.size == "m"
                                            ? "Medium"
                                            : "Large",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Gap(24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(32),
                                  child: CachedNetworkImage(
                                    imageUrl: petDetail.owner.profilePictureUrl,
                                    width: 64,
                                    height: 64,
                                  ),
                                ),
                                const Gap(16),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      petDetail.owner.fullName,
                                      style: TextStyle(
                                        color: AppColors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const Gap(4),
                                    Text(
                                      "Active 12h ago",
                                      style: TextStyle(
                                        color: AppColors.gray,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            CupertinoButton(
                              onPressed: () {},
                              color: AppColors.secondaryColor,
                              borderRadius: BorderRadius.circular(28),
                              minSize: 0,
                              padding: const EdgeInsets.all(16),
                              child: SvgPicture.asset(
                                AppIcons.icLocation,
                                width: 24,
                                height: 24,
                              ),
                            ),
                          ],
                        ),
                        const Gap(24),
                        Text(
                          "About ${petDetail.name}",
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(12),
                        Text(
                          petDetail.info,
                          style: TextStyle(
                            color: AppColors.gray,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Gap(12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                CupertinoButton(
                  onPressed: () {},
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(28),
                  minSize: 0,
                  padding: const EdgeInsets.all(16),
                  child: SvgPicture.asset(
                    AppIcons.icAddFavorite,
                    width: 24,
                    height: 24,
                  ),
                ),
                const Gap(18),
                Expanded(
                  child: CupertinoButton.filled(
                    onPressed: () {},
                    borderRadius: BorderRadius.circular(36),
                    child: const Text(
                      "Adopt Now",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
