import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Column(
      children: [
        SignInContainer(size: size),
      ],
    );
  }
}

class SignInContainer extends StatelessWidget {
  const SignInContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height/4,
      width: size.width,
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: const BoxDecoration(
        color: Color(0xFF1FC9C2),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32))
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('Sign In',style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),),
          SizedBox(height: 10,),
          Text('Hi, Welcome back! ',style: TextStyle(
            color: Colors.white,
          ),),
        ],
      ),
    );
  }
}
