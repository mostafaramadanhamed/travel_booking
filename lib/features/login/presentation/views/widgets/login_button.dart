

import 'package:flutter/material.dart';

import '../../../../home/presentaion/views/main_view.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
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
      child:  Text(
        text,
        style:const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),
      ),
      style: TextButton.styleFrom(
          minimumSize: Size(size.width, 66),
          backgroundColor: const Color(0xFFFB9057),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16))),
    );
  }
}
