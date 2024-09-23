import 'package:flutter/cupertino.dart';

import '../../../core/constants/images.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Image.asset(AppImage.banner),
      ),
    );
  }
}
