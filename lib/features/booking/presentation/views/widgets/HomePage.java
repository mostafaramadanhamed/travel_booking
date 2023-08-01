import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:matcher/matcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 150, 0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0XFF1FC9C2),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(40))),
                width: 500,
                height: 100,
                child: const Center(
                  child: Text('Checkout',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: 310,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 40, 4, 4),
                      child: Text(
                        'NYC',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 60, 0, 4),
                      child: Text('-----',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF242424))),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                        15,
                        65,
                        0,
                        4,
                      ),
                      child: FaIcon(
                        FontAwesomeIcons.plane,
                        color: Color(0XFF242424),
                        size: 28,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 60, 0, 0),
                      child: Text('-----',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF242424))),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 40, 4, 4),
                      child: Text(
                        'YYZ',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 100, 4, 4),
                      child: Text(
                        'New York',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF242424)),
                      ),
                    ),
                    Spacer(flex: 1),
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 100, 209, 4),
                      child: Text(
                        'Toronto',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF242424)),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 130, 4, 4),
                  child: Text(
                    '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',
                    style: TextStyle(color: Color(0XFFBEBEBE)),
                  ),
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 160, 0, 4),
                          child: Container(
                              alignment: Alignment.center,
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0XFFD3F8F5),
                                borderRadius: BorderRadius.circular(90),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(3, 0, 0, 4),
                                child: FaIcon(
                                  FontAwesomeIcons.planeCircleCheck,
                                  color: Color(0XFF009DAE),
                                  size: 20,
                                ),
                              )),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 155, 10, 0),
                          child: Text(
                            'Airline',
                            style: TextStyle(
                                fontSize: 11, color: Color(0XFF949494)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Text(
                            'Air King',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF242424)),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(60, 155, 0, 0),
                          child: Text(
                            'Passengers',
                            style: TextStyle(
                                fontSize: 11, color: Color(0XFF949494)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(80, 10, 0, 0),
                          child: Text(
                            'James Christin',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF242424)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(46, 230, 0, 0),
                      child: Text(
                        'Date',
                        style:
                            TextStyle(fontSize: 11, color: Color(0XFF949494)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(80, 230, 0, 0),
                      child: Text(
                        'Gate',
                        style:
                            TextStyle(fontSize: 11, color: Color(0XFF949494)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(75, 230, 20, 0),
                      child: Text(
                        'Flight No.',
                        style:
                            TextStyle(fontSize: 11, color: Color(0XFF949494)),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(46, 255, 0, 0),
                      child: Text(
                        '24 Mar 2023',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0XFF242424),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 255, 0, 0),
                      child: Text(
                        '24A',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0XFF242424),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(75, 255, 20, 0),
                      child: Text(
                        'NNS24',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0XFF242424),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(46, 295, 0, 0),
                      child: Text(
                        'Boarding Time',
                        style:
                            TextStyle(fontSize: 11, color: Color(0XFF949494)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 295, 0, 0),
                      child: Text(
                        'Seat',
                        style:
                            TextStyle(fontSize: 11, color: Color(0XFF949494)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(75, 295, 20, 0),
                      child: Text(
                        'Class',
                        style:
                            TextStyle(fontSize: 11, color: Color(0XFF949494)),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(46, 320, 0, 0),
                      child: Text(
                        '04:00pm',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0XFF242424),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45, 320, 0, 0),
                      child: Text(
                        '5A',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0XFF242424),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(80, 320, 0, 0),
                      child: Text(
                        'Economy',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0XFF242424),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 350, 4, 4),
                  child: Text(
                    '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',
                    style: TextStyle(color: Color(0XFFBEBEBE)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 390, 40, 4),
                  child: Image.asset('images/ك3.webp'),
                ),
                // SizedBox(
                //   height: 25,
                // ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(23, 0, 169, 0),
                  child: Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(40, 35, 0, 0),
                          child: Text(
                            '1 Passenger',
                            style: TextStyle(
                                color: Color(0XFF242424), fontSize: 13),
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 35, 180, 0),
                          child: Text(
                            "\$525",
                            style: TextStyle(
                                color: Color(0XFF242424), fontSize: 13),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(40, 20, 0, 0),
                          child: Text(
                            'Insurance',
                            style: TextStyle(
                                color: Color(0XFF242424), fontSize: 13),
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 180, 0),
                          child: Text(
                            "-",
                            style: TextStyle(
                              color: Color(0XFF242424),
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                    // const SizedBox(
                    //   height: 15,
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 15, 170, 0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0XFFFB9057)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                          minimumSize: MaterialStateProperty.all(
                            const Size(400, 60),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Confirm',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
