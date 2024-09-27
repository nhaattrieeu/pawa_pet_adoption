import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:pawa_pet_adoption/presentation/auth/screen/sign_in_screen.dart';
import 'package:pawa_pet_adoption/presentation/profile/widgets/pet_preference_modal_popup.dart';
import 'package:pawa_pet_adoption/presentation/profile/widgets/profile_selection_title.dart';

import '../../../core/constants/colors.dart';

class ProfileSelection extends StatelessWidget {
  const ProfileSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Personal info",
          style: TextStyle(
            fontSize: 14,
            color: AppColors.gray,
          ),
        ),
        const Gap(10),
        CupertinoButton(
          onPressed: () {},
          padding: EdgeInsets.zero,
          child: CupertinoFormRow(
            padding: EdgeInsets.zero,
            prefix: const ProfileSelectionTitle(
              title: "Profile",
              icon: CupertinoIcons.person,
            ),
            child: Icon(
              CupertinoIcons.forward,
              color: AppColors.gray,
            ),
          ),
        ),
        const Gap(10),
        CupertinoButton(
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) {
                return const PetPreferenceModalPopup();
              },
            );
          },
          minSize: 0,
          padding: EdgeInsets.zero,
          child: CupertinoFormRow(
            padding: EdgeInsets.zero,
            prefix: const ProfileSelectionTitle(
              title: "Pet Preferences",
              icon: CupertinoIcons.sparkles,
            ),
            child: Icon(
              CupertinoIcons.forward,
              color: AppColors.gray,
            ),
          ),
        ),
        const Gap(24),
        Text(
          "General",
          style: TextStyle(
            fontSize: 14,
            color: AppColors.gray,
          ),
        ),
        const Gap(10),
        CupertinoButton(
          onPressed: () {},
          minSize: 0,
          padding: EdgeInsets.zero,
          child: CupertinoFormRow(
            padding: EdgeInsets.zero,
            prefix: const ProfileSelectionTitle(
              title: "Notification",
              icon: CupertinoIcons.bell,
            ),
            child: Icon(
              CupertinoIcons.forward,
              color: AppColors.gray,
            ),
          ),
        ),
        const Gap(10),
        CupertinoButton(
          onPressed: () {},
          minSize: 0,
          padding: EdgeInsets.zero,
          child: CupertinoFormRow(
            padding: EdgeInsets.zero,
            prefix: const ProfileSelectionTitle(
              title: "Appearance",
              icon: CupertinoIcons.eye,
            ),
            child: Icon(
              CupertinoIcons.forward,
              color: AppColors.gray,
            ),
          ),
        ),
        const Gap(10),
        CupertinoButton(
          onPressed: () {},
          minSize: 0,
          padding: EdgeInsets.zero,
          child: CupertinoFormRow(
            padding: EdgeInsets.zero,
            prefix: const ProfileSelectionTitle(
              title: "Data & Analytics",
              icon: CupertinoIcons.chart_pie,
            ),
            child: Icon(
              CupertinoIcons.forward,
              color: AppColors.gray,
            ),
          ),
        ),
        const Gap(10),
        CupertinoButton(
          onPressed: () {},
          minSize: 0,
          padding: EdgeInsets.zero,
          child: CupertinoFormRow(
            padding: EdgeInsets.zero,
            prefix: const ProfileSelectionTitle(
              title: "Invite Friends",
              icon: CupertinoIcons.person_2,
            ),
            child: Icon(
              CupertinoIcons.forward,
              color: AppColors.gray,
            ),
          ),
        ),
        const Gap(24),
        Text(
          "Security",
          style: TextStyle(
            fontSize: 14,
            color: AppColors.gray,
          ),
        ),
        const Gap(10),
        CupertinoButton(
          onPressed: () {},
          minSize: 0,
          padding: EdgeInsets.zero,
          child: CupertinoFormRow(
            padding: EdgeInsets.zero,
            prefix: const ProfileSelectionTitle(
              title: "Account & Security",
              icon: CupertinoIcons.shield,
            ),
            child: Icon(
              CupertinoIcons.forward,
              color: AppColors.gray,
            ),
          ),
        ),
        const Gap(10),
        CupertinoButton(
          onPressed: () {},
          minSize: 0,
          padding: EdgeInsets.zero,
          child: CupertinoFormRow(
            padding: EdgeInsets.zero,
            prefix: const ProfileSelectionTitle(
              title: "Account Linked",
              icon: CupertinoIcons.link,
            ),
            child: Icon(
              CupertinoIcons.forward,
              color: AppColors.gray,
            ),
          ),
        ),
        const Gap(10),
        CupertinoButton(
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
              SignInScreen.routeName,
              (route) => false,
            );
          },
          minSize: 0,
          padding: EdgeInsets.zero,
          child: const CupertinoFormRow(
            padding: EdgeInsets.zero,
            prefix: ProfileSelectionTitle(
              title: "Logout",
              icon: CupertinoIcons.square_arrow_left,
            ),
            child: Gap(0),
          ),
        ),
      ],
    );
  }
}
