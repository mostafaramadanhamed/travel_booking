

import 'package:flutter/material.dart';
import 'package:travel_booking/core/utils/app_color.dart';
import 'package:travel_booking/core/utils/styles.dart';

class ButtonBottom extends StatelessWidget {
  const ButtonBottom({
    super.key,
    required this.size, required this.text, required this.onPressed,
  });

  final String text;
  final Size size;
  final void Function()onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(

          minimumSize: Size(size.width, 66),
          backgroundColor: AppColor.kSecondaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16))),
      child:  Text(
        text,
        style:Styles.textStyle20,
      ),
    );
  }
}
