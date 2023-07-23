import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_booking/core/widgets/text_filed.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SignInContainer(size: size),
        const SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const CustomTextFiled(hint: 'Email'),
              const SizedBox(
                height: 15,
              ),
              const CustomTextFiled(hint: 'Password'),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (val) {},
                    activeColor: const Color(0xFFFB9057),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  const Text('Remember Me'),
                  Spacer(),
                  const Text('Forget Password ?',),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                    minimumSize: Size(size.width, 66),
                    backgroundColor: Color(0xFFFB9057),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16))),
              )
            ],
          ),
        )
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
      height: size.height / 4,
      width: size.width,
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: const BoxDecoration(
          color: Color(0xFF1FC9C2),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32))),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Sign In',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Hi, Welcome back! ',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
