
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_color.dart';

class SliderImages extends StatelessWidget {
  const SliderImages({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height/1.7,
      width: double.infinity,
      child: AnotherCarousel(
        images: const [
          AssetImage(AppAssets.kSplashPhoto1),
          AssetImage(AppAssets.kSplashPhoto2),
          AssetImage(AppAssets.kSplashPhoto3),
        ],
        borderRadius: true,
        radius: const Radius.circular(30),
        dotBgColor: Colors.transparent,
        dotColor: Colors.grey.shade300,
        dotIncreasedColor:AppColor.kPrimaryColor,
        indicatorBgPadding: 0,
      ),
    );
  }
}
