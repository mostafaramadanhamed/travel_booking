import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_booking/core/utils/app_color.dart';
import 'package:travel_booking/core/widgets/text_filed.dart';
import 'package:travel_booking/features/login/presentation/views/widgets/sign_in_container.dart';

import '../../../../home/presentaion/views/main_view.dart';
import 'login_button.dart';
import 'login_widgets.dart';

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
             rowCheckBox(),
              const SizedBox(
                height: 10,
              ),
              LoginButton(size: size,text: 'Sign In',onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const MainView();
                }));
              },),
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
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(child: Icon(FontAwesomeIcons.apple,color: Colors.black,),backgroundColor: AppColor.kBottomNavIconColor.withOpacity(0.2)),
                  SizedBox(width: 12,),
                  CircleAvatar(child: Icon(FontAwesomeIcons.google,color: AppColor.kPrimaryColor,),backgroundColor: AppColor.kBottomNavIconColor.withOpacity(0.2)),
                  SizedBox(width: 12,),
                  CircleAvatar(child: Icon(FontAwesomeIcons.facebook,color: Colors.blue.shade600,),backgroundColor: AppColor.kBottomNavIconColor.withOpacity(0.2)),
                ],
              ),
              const SizedBox(height: 20,),
              dontHaveAccount(),
            ],
          ),
        )
      ],
    );
  }

}



