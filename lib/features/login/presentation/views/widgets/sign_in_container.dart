
import 'package:flutter/material.dart';
import 'package:travel_booking/core/utils/app_color.dart';
import 'package:travel_booking/core/utils/constants.dart';
import 'package:travel_booking/core/utils/styles.dart';

class SignInContainer extends StatelessWidget {
  const SignInContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 3.6,
      width: size.width,
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: const BoxDecoration(
          color: AppColor.kPrimaryColor,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32))),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            kSignIn,
            style: Styles.textStyle24,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            kHi,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
