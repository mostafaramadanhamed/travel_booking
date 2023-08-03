

import 'package:flutter/material.dart';

import '../../../../login/presentation/views/widgets/login_button.dart';

class TicketDetails extends StatelessWidget {
  const TicketDetails({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 16,),
            child: Column(

              children: [
                Row(
                  children: [
                    Text(
                      '1 Passenger',
                      style: TextStyle(
                          color: Color(0XFF242424), fontSize: 13),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      "\$525",
                      style: TextStyle(
                          color: Color(0XFF242424), fontSize: 13),
                    )
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    Text(
                      'Insurance',
                      style: TextStyle(
                          color: Color(0XFF242424), fontSize: 13),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      "-",
                      style: TextStyle(
                        color: Color(0XFF242424),
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ],

            ),
          ),
        ),
        const SizedBox(height: 5,),
        ButtonBottom(size: size, text: 'Confirm', onPressed: (){}),
      ],
    );
  }
}
