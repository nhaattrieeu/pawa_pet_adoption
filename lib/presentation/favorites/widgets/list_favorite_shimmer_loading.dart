import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:pawa_pet_adoption/core/constants/colors.dart';
import 'package:shimmer/shimmer.dart';

class ListFavoriteShimmerLoading extends StatelessWidget {
  const ListFavoriteShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 18,
        crossAxisSpacing: 18,
        childAspectRatio: 3 / 4,
      ),
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: AppColors.base,
          highlightColor: AppColors.highlight,
          child: LayoutBuilder(
            builder: (context, constraints) {
              var width = constraints.maxWidth;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: width,
                    height: width,
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
        );
      },
    );
  }
}
