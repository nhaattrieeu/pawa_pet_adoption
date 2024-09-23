import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:pawa_pet_adoption/core/constants/colors.dart';
import 'package:pawa_pet_adoption/core/constants/images.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CupertinoButton(
            onPressed: () {},
            minSize: 0,
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    border: Border.all(color: AppColors.whiteGray),
                  ),
                  child: Center(
                    child: Image.asset(
                      AppImage.cat,
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
                const Gap(8),
                Text(
                  "Cats",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.gray,
                  ),
                ),
              ],
            ),
          ),
          CupertinoButton(
            onPressed: () {},
            minSize: 0,
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    border: Border.all(color: AppColors.whiteGray),
                  ),
                  child: Center(
                    child: Image.asset(
                      AppImage.dog,
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
                const Gap(8),
                Text(
                  "Dogs",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.gray,
                  ),
                ),
              ],
            ),
          ),
          CupertinoButton(
            onPressed: () {},
            minSize: 0,
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    border: Border.all(color: AppColors.whiteGray),
                  ),
                  child: Center(
                    child: Image.asset(
                      AppImage.reptile,
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
                const Gap(8),
                Text(
                  "Reptiles",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.gray,
                  ),
                ),
              ],
            ),
          ),
          CupertinoButton(
            onPressed: () {},
            minSize: 0,
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    border: Border.all(color: AppColors.whiteGray),
                  ),
                  child: Center(
                    child: Image.asset(
                      AppImage.other,
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
                const Gap(8),
                Text(
                  "Others",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.gray,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
