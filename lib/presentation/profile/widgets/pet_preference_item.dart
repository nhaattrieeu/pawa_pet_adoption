import 'package:flutter/cupertino.dart';

import '../../../core/constants/colors.dart';

class PetPreferenceItem extends StatefulWidget {
  const PetPreferenceItem(
      {super.key, required this.title, required this.selected});

  final String title;
  final bool selected;

  @override
  State<PetPreferenceItem> createState() => _PetPreferenceItemState();
}

class _PetPreferenceItemState extends State<PetPreferenceItem> {
  late bool check;

  @override
  void initState() {
    check = widget.selected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        setState(() {
          check = !check;
        });
      },
      minSize: 0,
      padding: EdgeInsets.zero,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: check == true ? AppColors.secondaryColor : AppColors.whiteGray,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Text(
          widget.title,
          style: TextStyle(
            color: check == true ? AppColors.primaryColor : AppColors.gray,
          ),
        ),
      ),
    );
  }
}
