import 'package:flutter/material.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/custom_app_bar.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/hotel_view_body.dart';

class HotelView extends StatelessWidget {
  const HotelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: customAppBar(title: 'Hotels'),
      body:const HotelViewBody()
    );

  }

}

