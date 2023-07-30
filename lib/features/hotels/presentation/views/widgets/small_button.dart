

import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
    super.key,
    required this.size,
    required this.onPressed
  });

  final Size size;
  final  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(

          minimumSize: Size(size.width/3, 42),
          backgroundColor: AppColor.kSecondaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16))),
      child:  const Text(

        "Book a room",
        style:TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),
      ),
    );
  }
}
