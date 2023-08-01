import 'package:flutter/material.dart';
import 'package:travel_booking/core/utils/constants.dart';
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
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          SignInContainer(size: size),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                const CustomTextFiled(hint: kEmail),
                const SizedBox(
                  height: 15,
                ),
                const CustomTextFiled(hint:kPassword,obscureText: true,),
                const SizedBox(
                  height: 6,
                ),
               rowCheckBox(),
                const SizedBox(
                  height: 10,
                ),
                ButtonBottom(size: size,text: kSignIn,onPressed: (){
                  //todo refactor router
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const MainView();
                  }));
                },),
                const SizedBox(
                  height: 20,
                ),
                LoginDivider(size: size),
                const SizedBox(height: 20,),
                 const SocialLogin(),
                const SizedBox(height: 20,),
                dontHaveAccount(),
              ],
            ),
          )
        ],
      ),
    );
  }

}



