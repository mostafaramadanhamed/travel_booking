

import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: const AssetImage(AppAssets.kSplashBackgroundPhoto),
      fit: BoxFit.cover,
      height: size.height/1.6,
      width: size.width,
      color: Colors.grey.shade300,
    );
  }
}