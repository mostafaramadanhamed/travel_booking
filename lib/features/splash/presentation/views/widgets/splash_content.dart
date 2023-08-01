


import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../login/presentation/views/login.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "Let's Enjoy the",
              style: Styles.textStyle24.copyWith(fontWeight: FontWeight.w900,color: Colors.black),
            ),
          ),
          Row(
            children: [
              Container(
                  color: AppColor.kSecondaryColor,
                  transform: Matrix4.skewY(666),
                  margin:
                  const EdgeInsets.fromLTRB(16.0, 12.0, 4, 12.0),
                  child: const Text(
                    'Beautiful',
                    style: Styles.textStyle24,
                  )),
              Text(
                'World!',
                style:Styles.textStyle24.copyWith(color: Colors.black),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 3, 4, 3),
            child: Text(
              "Discover new places and get new experiences. We Will",
              style: Styles.textStyle16.copyWith(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 3, 4, 3),
            child: Text(
              'help to find the best experience for your journey.',
              style: Styles.textStyle16.copyWith(color: Colors.grey),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Text('Swipe right to start',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.kSecondaryColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(32),
                          bottomLeft: Radius.circular(32),
                        ),
                        border: Border.all(
                          color: const Color(0XFFFB9057),
                          width: 4,
                          style: BorderStyle.solid,
                        ),
                      ),
                      width: 70,
                      height: 70,
                      child: FloatingActionButton(
                        focusColor: Colors.white,
                        backgroundColor: Colors.white,
                        onPressed: () {
                          //todo refactor router
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LoginView(),));
                        },
                        child: const Icon(
                          Icons.arrow_right_alt_rounded,
                          color: Color(0XFFFB9057),
                          size: 35,
                        ),),
                    ),
                    Container(height: 70,width: 25,
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.zero,
                      decoration: const BoxDecoration(
                        color: AppColor.kSecondaryColor,
                      ),
                    ),

                  ],
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
