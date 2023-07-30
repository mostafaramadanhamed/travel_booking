

import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({
    super.key,
    required this.size,

  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height/4.5,
      width: size.width,
      decoration: const BoxDecoration(
          color: AppColor.kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(32),
          )
      ),
    );
  }
}
