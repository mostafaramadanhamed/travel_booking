
import 'package:flutter/material.dart';
import 'package:travel_booking/features/booking/presentation/views/widgets/add_card_view_body.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/custom_app_bar.dart';

class AddCardView extends StatelessWidget {
  const AddCardView({super.key});
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: customAppBar(title: 'Add Card'),
      body:AddCardViewBody(size: size),
    );
  }
}
