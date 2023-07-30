




import 'package:flutter/material.dart';
import 'package:travel_booking/core/utils/styles.dart';

class HotelNameAndPrice extends StatelessWidget {
  const HotelNameAndPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const HotelName(),
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: '143\$',
                style:Styles.textStyle18,
              ),
              TextSpan(
                text: ' /night',
                style: Styles.textStyle14
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HotelName extends StatelessWidget {
  const HotelName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Grand Luxury's",
      style:Styles.textStyle22,
    );
  }
}