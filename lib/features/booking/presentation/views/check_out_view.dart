import 'package:flutter/material.dart';
import 'package:travel_booking/features/booking/presentation/views/widgets/checkout_view_body.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/custom_app_bar.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: customAppBar(title: 'Checkout'),
      body: CheckoutViewBody(size: size),
    );
  }
}



