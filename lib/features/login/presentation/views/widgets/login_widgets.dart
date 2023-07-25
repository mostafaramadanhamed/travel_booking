

import 'package:flutter/material.dart';
import 'package:travel_booking/core/utils/app_color.dart';

Row dontHaveAccount() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text('Don\'t have an account ?',),
      TextButton(
        onPressed: () {},
        child: const Text(
          'Sign Up',
          style: TextStyle(color:AppColor.kSecondaryColor),
        ),
      ),
    ],
  );
}

Widget rowCheckBox()=> Row(
  children: [
    Checkbox(
      value: true,
      onChanged: (val) {},
      activeColor: AppColor.kSecondaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
    ),
    const Text('Remember Me'),
    const Spacer(),
    const Text('Forget Password ?',),
  ],
);