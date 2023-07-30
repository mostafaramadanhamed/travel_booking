

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_booking/core/utils/app_color.dart';

import '../../../../../core/utils/constants.dart';

Row dontHaveAccount() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(kDontHaveAccount,),
      TextButton(
        onPressed: () {},
        child: const Text(
          kSignUp,
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
    const Text(kRememberMe),
    const Spacer(),
    const Text(kForgetPassword,),
  ],
);

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(backgroundColor: AppColor.kBottomNavIconColor.withOpacity(0.2), child: const Icon(FontAwesomeIcons.apple,color: Colors.black,)),
        const SizedBox(width: 12,),
        CircleAvatar(backgroundColor: AppColor.kBottomNavIconColor.withOpacity(0.2), child: const Icon(FontAwesomeIcons.google,color: AppColor.kPrimaryColor,)),
        const SizedBox(width: 12,),
        CircleAvatar(backgroundColor: AppColor.kBottomNavIconColor.withOpacity(0.2), child: Icon(FontAwesomeIcons.facebook,color: Colors.blue.shade600,)),
      ],
    );
  }
}

class LoginDivider extends StatelessWidget {
  const LoginDivider({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(height: 2,color: Colors.grey.shade300,width: size.width/7,margin: const EdgeInsets.symmetric(horizontal: 12),),
        Text(kSocialLogin,style: TextStyle(color: Colors.grey.shade600),),
        Container(height: 2,color: Colors.grey.shade300,width: size.width/7,margin: const EdgeInsets.symmetric(horizontal: 12),),
      ],
    );
  }
}
