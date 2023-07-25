

import 'package:flutter/material.dart';

import '../../../../home/presentaion/views/main_view.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return MainView();
        }));
      },
      child: const Text(
        'Sign In',
        style: TextStyle(color: Colors.white),
      ),
      style: TextButton.styleFrom(
          minimumSize: Size(size.width, 66),
          backgroundColor: const Color(0xFFFB9057),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16))),
    );
  }
}
