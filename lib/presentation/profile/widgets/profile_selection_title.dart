import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/colors.dart';

class ProfileSelectionTitle extends StatelessWidget {
  const ProfileSelectionTitle(
      {super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColors.black,
        ),
        const Gap(12),
        Text(
          title,
          style: TextStyle(
            color: AppColors.black,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
