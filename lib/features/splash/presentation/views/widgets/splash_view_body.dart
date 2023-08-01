


import 'package:flutter/material.dart';
import 'package:travel_booking/features/splash/presentation/views/widgets/slider_images.dart';
import 'package:travel_booking/features/splash/presentation/views/widgets/splash_content.dart';

import 'background_image.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(size: size),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SliderImages(size: size),

            const SplashContent()
          ],
        ),
      ],
    );
  }
}
