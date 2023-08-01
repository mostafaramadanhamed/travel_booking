


import 'package:flutter/material.dart';
import 'package:travel_booking/features/booking/presentation/views/book_flight_view.dart';
import 'package:travel_booking/features/booking/presentation/views/widgets/plane_seats.dart';
import 'package:travel_booking/features/booking/presentation/views/widgets/seats_details.dart';

import '../../../../hotels/presentation/views/widgets/top_container.dart';
import '../../../../login/presentation/views/widgets/login_button.dart';

class SeatsViewBody extends StatelessWidget {
  const SeatsViewBody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          // Container as a background for ListView
          TopContainer(size: size),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SeatDetails(size: size),
                    PlaneSeats(size: size),
                  ], ),
                ButtonBottom(size: size, text: "Confirm", onPressed: (){
                  //todo refactor router
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const BookFlightView();
                  }));
                }),
              ],
            ),
          ),
        ],),
    );
  }
}