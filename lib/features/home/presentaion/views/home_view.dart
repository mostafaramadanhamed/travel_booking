import 'package:flutter/material.dart';
import 'package:travel_booking/core/utils/app_color.dart';
import 'package:travel_booking/features/home/presentaion/views/widgets/home_view_body.dart';

class  HomeView extends StatelessWidget {
  const  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBottomNavIconColor.withOpacity(.1),
      body:const HomeViewBody() ,
    );
  }
}
