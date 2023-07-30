import 'package:flutter/material.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/custom_app_bar.dart';
import 'widgets/room_review_body.dart';

class RoomReview extends StatelessWidget {
  const RoomReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppBar(title: 'Select Room'),
      body: const RoomReviewBody(),
    );
  }
}
