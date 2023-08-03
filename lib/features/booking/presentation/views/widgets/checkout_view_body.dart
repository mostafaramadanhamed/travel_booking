

import 'package:flutter/material.dart';
import 'package:travel_booking/features/booking/presentation/views/widgets/ticket_details.dart';

import 'book_flight_view_body.dart';
import 'flight_details.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          SmallestContainer(size:size),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4,),
            child: FlightDetails(size: size),

          ),
          const SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TicketDetails(size: size),
          ),
        ],
      ),
    );
  }
}
