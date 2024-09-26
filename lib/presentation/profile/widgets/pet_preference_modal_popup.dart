import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:pawa_pet_adoption/presentation/profile/widgets/pet_preference_item.dart';

import '../../../core/constants/colors.dart';

class PetPreferenceModalPopup extends StatelessWidget {
  const PetPreferenceModalPopup({super.key});

  @override
  Widget build(BuildContext context) {
    double paddingBottom = MediaQuery.of(context).padding.bottom;

    return Container(
      padding: EdgeInsets.only(bottom: paddingBottom),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(32),
        ),
      ),
      height: 330,
      child: Column(
        children: [
          const Gap(24),
          Text(
            "Pet Preferences",
            style: TextStyle(
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(12),
          const Padding(
            padding: EdgeInsets.all(18),
            child: Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                PetPreferenceItem(
                  title: "Cats",
                  selected: true,
                ),
                PetPreferenceItem(
                  title: "Dogs",
                  selected: true,
                ),
                PetPreferenceItem(
                  title: "Rabbits",
                  selected: false,
                ),
                PetPreferenceItem(
                  title: "Births",
                  selected: false,
                ),
                PetPreferenceItem(
                  title: "Reptiles",
                  selected: false,
                ),
                PetPreferenceItem(
                  title: "Fish",
                  selected: false,
                ),
                PetPreferenceItem(
                  title: "Primates",
                  selected: false,
                ),
                PetPreferenceItem(
                  title: "Other",
                  selected: true,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                Expanded(
                  child: CupertinoButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    minSize: 0,
                    padding: EdgeInsets.zero,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                          width: 2,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(18),
                Expanded(
                  child: CupertinoButton.filled(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    borderRadius: BorderRadius.circular(36),
                    child: const Text(
                      "Confirm",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
