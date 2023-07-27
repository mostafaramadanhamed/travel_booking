import 'package:flutter/material.dart';
import 'package:travel_booking/core/utils/app_color.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/hotel_view_body.dart';

class HotelView extends StatelessWidget {
  const HotelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kPrimaryColor,
        elevation: 0,
        title:  const Text('Hotels',style:TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),),
        centerTitle: true,
      ),
      body:HotelViewBody()
    );

  }
}
