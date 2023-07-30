


import 'package:flutter/material.dart';
import 'package:travel_booking/features/booking/presentation/views/widgets/plane_shape.dart';

class PlaneSeats extends StatelessWidget {
  const PlaneSeats({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          PlaneShape(size: size),

        ],),
    );
  }
}
