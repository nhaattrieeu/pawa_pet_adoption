import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:pawa_pet_adoption/core/constants/colors.dart';
import 'package:shimmer/shimmer.dart';

class ListPetShimmerLoading extends StatelessWidget {
  const ListPetShimmerLoading({super.key, required this.title});

  final String title;

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
          child: Shimmer.fromColors(
            baseColor: AppColors.base,
            highlightColor: AppColors.highlight,
            child: ListView.separated(
              itemCount: 5,
              padding: const EdgeInsets.symmetric(horizontal: 18),
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return const Gap(18);
              },
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    const Gap(10),
                    Container(
                      width: 120,
                      height: 16,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    const Gap(10),
                    Row(
                      children: [
                        Container(
                          width: 80,
                          height: 16,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        const Gap(18),
      ],
    );
  }
}
