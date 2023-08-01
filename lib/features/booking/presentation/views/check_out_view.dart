import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_booking/core/utils/app_assets.dart';
import 'package:travel_booking/features/booking/presentation/views/widgets/book_flight_view_body.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/custom_app_bar.dart';
import 'package:travel_booking/features/login/presentation/views/widgets/login_button.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: customAppBar(title: 'Checkout'),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SmallestContainer(size:size),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4,),
              child: Container(
                width: double.infinity,
                height: size.height/1.7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
                  child: Column(
                    children: [
                      const FlightDirection(),
                      const SizedBox(height: 10,),
                      const FromToFlight(),
                      const SizedBox(height: 15,),
                      const CDivider(),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.center,
                              width: 50,
                              height: 50,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: const Color(0XFFD3F8F5),
                                borderRadius: BorderRadius.circular(90),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(3, 0, 0, 4),
                                child: FaIcon(
                                  FontAwesomeIcons.crown,
                                  color: Color(0XFF009DAE),
                                  size: 20,
                                ),
                              )),
                          const Column(
                            children: [
                              Text(
                                'Airline',
                                style: TextStyle(
                                    fontSize: 11, color: Color(0XFF949494)),
                              ),
                               SizedBox(height: 5,),
                              Text(
                                'Air King',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFF242424)),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Column(
                            children: [
                              Text(
                                'Passengers',
                                style: TextStyle(
                                    fontSize: 11, color: Color(0XFF949494)),
                              ),
                               SizedBox(height: 5,),
                              Text(
                                'James Christin',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFF242424)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlightDate(),
                    FlightGate(),
                          FlightNumber(),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlightTime(),
                          SeatNum(),
                          FlightClass(),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      const CDivider(),
                      const SizedBox(height: 15,),
                      Image.asset(AppAssets.kBarCode,fit: BoxFit.cover,),
                    ],
                  ),
                ),
              ),

            ),
            const SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
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
            ),
          ),
          ],
        ),
      ),
    );
  }
}

class FlightClass extends StatelessWidget {
  const FlightClass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Class',
          style:
          TextStyle(fontSize: 11, color: Color(0XFF949494)),
        ),   Text(
          'Economy',
          style: TextStyle(
              fontSize: 13,
              color: Color(0XFF242424),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class SeatNum extends StatelessWidget {
  const SeatNum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Seat',
          style:
          TextStyle(fontSize: 11, color: Color(0XFF949494)),
        ),   Text(
          '5B',
          style: TextStyle(
              fontSize: 13,
              color: Color(0XFF242424),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class FlightTime extends StatelessWidget {
  const FlightTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Boarding Time',
          style:
          TextStyle(fontSize: 11, color: Color(0XFF949494)),
        ), Text(
          '04:00pm',
          style: TextStyle(
              fontSize: 13,
              color: Color(0XFF242424),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class FlightNumber extends StatelessWidget {
  const FlightNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
    children: [
      Text(
          'Flight No.',
          style:
          TextStyle(fontSize: 11, color: Color(0XFF949494)),
        ),
        Text(
          'NNS24',
          style: TextStyle(
              fontSize: 13,
              color: Color(0XFF242424),
              fontWeight: FontWeight.bold),
        ),
    ],
                    );
  }
}

class FlightGate extends StatelessWidget {
  const FlightGate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
          children: [
            Text(
                'Gate',
                style:
                TextStyle(fontSize: 11, color: Color(0XFF949494)),
              ),  Text(
                '24A',
                style: TextStyle(
                    fontSize: 13,
                    color: Color(0XFF242424),
                    fontWeight: FontWeight.bold),
              ),
          ],
    );
  }
}

class FlightDate extends StatelessWidget {
  const FlightDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Date',
          style:
          TextStyle(fontSize: 11, color: Color(0XFF949494)),
        ),
        Text(
          '24 Mar 2023',
          style: TextStyle(
              fontSize: 13,
              color: Color(0XFF242424),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class CDivider extends StatelessWidget {
  const CDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',
    maxLines: 1,  style: TextStyle(color: Color(0XFFBEBEBE)),
    );
  }
}

class FromToFlight extends StatelessWidget {
  const FromToFlight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'New York',
          style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Color(0XFF242424)),
        ),
        Spacer(flex: 1),
        Text(
          'Toronto',
          style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Color(0XFF242424)),
        ),
      ],
    );
  }
}

class FlightDirection extends StatelessWidget {
  const FlightDirection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'NYC',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black87),
        ),
        Spacer(flex: 2,),
        Text('-----',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0XFF242424))),
        Spacer(flex: 1,),

        FaIcon(
          FontAwesomeIcons.plane,
          color: Color(0XFF242424),
          size: 28,
        ),
        Spacer(flex: 1,),

        Text('-----',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0XFF242424))),
        Spacer(flex: 2,),
        Text(
          'XYZ',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black87),
        ),
      ],
    );
  }
}
