import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pawa_pet_adoption/core/constants/colors.dart';
import 'package:pawa_pet_adoption/core/constants/icons.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  static String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CupertinoButton(
                  onPressed: () {},
                  child: Icon(
                    CupertinoIcons.back,
                    color: AppColors.black,
                    size: 28,
                  ),
                ),
                Text(
                  "Detail",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
                CupertinoButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    AppIcons.icShare,
                    width: 24,
                    height: 24,
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
