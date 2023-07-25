import 'package:flutter/material.dart';
import 'package:travel_booking/features/home/presentaion/views/widgets/home_view_body.dart';

class  HomeView extends StatelessWidget {
  const  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:HomeViewBody() ,
    );
  }
}
