

import 'package:flutter/material.dart';
import 'package:travel_booking/features/booking/presentation/views/widgets/unselected_button.dart';

import '../../../../../core/utils/app_color.dart';

class FlightDirection extends StatelessWidget {
  const FlightDirection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const UnSelectedButton(text: 'One Way'),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all(AppColor.kSecondaryColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              minimumSize: MaterialStateProperty.all(const Size(100, 40))),
          onPressed: () {},
          child: const Text(
            'Round Trip',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const UnSelectedButton(text: 'Multi City',),
      ],
    );
  }
}
