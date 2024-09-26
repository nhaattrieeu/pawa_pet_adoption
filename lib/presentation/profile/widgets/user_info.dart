import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/icons.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipOval(
              child: CachedNetworkImage(
                imageUrl:
                    "https://raw.githubusercontent.com/nhaattrieeu/temp_storage/refs/heads/main/432700301_935128371414362_7593378051883446897_n.jpg",
                width: 72,
                height: 72,
              ),
            ),
            const Gap(18),
            Expanded(
              child: Text(
                "Nguyen Nhat Trieu",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
            ),
          ],
        ),
        const Gap(24),
        Row(
          children: [
            Expanded(
              child: CupertinoButton.filled(
                onPressed: () {},
                padding: const EdgeInsets.symmetric(vertical: 18),
                borderRadius: BorderRadius.circular(36),
                child: const Text(
                  "Edit Profile",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Gap(18),
            CupertinoButton(
              onPressed: () {},
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(28),
              minSize: 0,
              padding: const EdgeInsets.all(16),
              child: SvgPicture.asset(
                AppIcons.icShare,
                width: 24,
                height: 24,
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
