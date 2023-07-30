

import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
          "     -   -    -    -   -    -    -   -    -   -    -    -    -   -    -   -",
          maxLines: 1,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColor.kBottomNavIconColor,
          ),
        ));
  }
}
