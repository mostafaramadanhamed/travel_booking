import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image(
              image: AssetImage('images/R.png'),
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: AnotherCarousel(
                    images: const [
                      AssetImage('images/imag1.png'),
                      AssetImage('images/imag2.jpg'),
                      AssetImage('images/imag3.jpg')
                    ],
                    borderRadius: true,
                    radius: const Radius.circular(30),
                    dotBgColor: Colors.transparent,
                    dotIncreasedColor: const Color(0XFFFB9057),
                    dotSize: 6,
                    indicatorBgPadding: 0,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        "Let's Enjoy the",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                            color: const Color(0XFFFB9057),
                            margin:
                            const EdgeInsets.fromLTRB(16.0, 12.0, 4, 12.0),
                            child: const Text(
                              'Beautiful',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                        const Text(
                          'World!',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16.0, 3, 4, 3),
                      child: Text(
                        "Discover new places and get new experiences. We Will",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0XFF868686),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16.0, 3, 4, 3),
                      child: Text(
                        'help to find the best experience for your journey.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0XFF868686),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(16, 20, 0, 0),
                          child: Text('Swipe right to start'),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              80,
                            ),
                            border: Border.all(
                              color: const Color(0XFFFB9057),
                              width: 3,
                              style: BorderStyle.solid,
                            ),
                          ),
                          margin: const EdgeInsets.fromLTRB(250, 30, 0, 0),
                          width: 70,
                          height: 70,
                          child: FloatingActionButton(
                            focusColor: Colors.white,
                            backgroundColor: Colors.white,
                            onPressed: () {},
                            child: const Icon(
                              Icons.arrow_right_alt_rounded,
                              color: Color(0XFFFB9057),
                              size: 35,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}