import 'package:flutter/material.dart';

import 'features/login/presentation/views/login.dart';

void main() {
  runApp(const TravelBookingApp());
}

class TravelBookingApp extends StatelessWidget {
  const TravelBookingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Travel Booking App',
      debugShowCheckedModeBanner: false,

      home: LoginView(),
    );
  }
}