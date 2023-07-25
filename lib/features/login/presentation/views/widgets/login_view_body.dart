import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_booking/core/widgets/text_filed.dart';
import 'package:travel_booking/features/home/presentaion/views/main_view.dart';

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
                  const Spacer(),
                  const Text('Forget Password ?',),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
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
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(height: 2,color: Colors.grey.shade300,width: size.width/7,margin: const EdgeInsets.symmetric(horizontal: 12),),
                Text('You can Connect With',style: TextStyle(color: Colors.grey.shade600),),
                Container(height: 2,color: Colors.grey.shade300,width: size.width/7,margin: const EdgeInsets.symmetric(horizontal: 12),),
                ],
              ),
              const SizedBox(height: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(),
                  SizedBox(width: 12,),
                  CircleAvatar(),
                  SizedBox(width: 12,),
                  CircleAvatar(),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account ?',),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Color(0xFFFB9057)),
                    ),
                  ),
                ],
              ),
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
