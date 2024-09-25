import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:pawa_pet_adoption/presentation/profile/widgets/profile_selection.dart';

import '../../../core/constants/colors.dart';
import '../widgets/user_info.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18, top: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              const Gap(24),
              const Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      UserInfo(),
                      Gap(32),
                      ProfileSelection(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
