import 'package:flutter/material.dart';
import 'package:travel_booking/features/booking/presentation/views/widgets/seats_view_body.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/custom_app_bar.dart';

class SeatsView extends StatelessWidget {
  const SeatsView({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return  Scaffold(
      appBar: customAppBar(title: 'Select Seats'),
      body: SeatsViewBody(size: size),
    );

  }
}





