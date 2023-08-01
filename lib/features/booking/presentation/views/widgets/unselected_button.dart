

import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';

class UnSelectedButton extends StatelessWidget {
  const UnSelectedButton({
    super.key, required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          minimumSize: MaterialStateProperty.all(const Size(100, 40))),
      onPressed: () {},
      child:  Text(
        text,
        style: const TextStyle(
          color:AppColor.kSecondaryColor,
        ),
      ),
    );
  }
}
