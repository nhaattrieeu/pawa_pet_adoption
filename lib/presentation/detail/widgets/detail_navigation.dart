import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/icons.dart';

class DetailNavigation extends StatelessWidget {
  const DetailNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CupertinoButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            CupertinoIcons.back,
            color: AppColors.black,
            size: 24,
          ),
        ),
        Text(
          "Detail",
          style: TextStyle(
            fontSize: 18,
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
    );
  }
}
