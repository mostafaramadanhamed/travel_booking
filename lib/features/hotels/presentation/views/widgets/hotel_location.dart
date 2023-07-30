
import 'package:flutter/material.dart';

class HotelLocation extends StatelessWidget {
  const HotelLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.location_on_rounded,size: 26,color: Colors.grey.shade800,),
        const SizedBox(width: 5,),
        Text('New York, USA',style:TextStyle(
          color: Colors.grey.shade800,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),),
      ],
    );
  }
}
