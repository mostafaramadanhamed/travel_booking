import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import 'widgets/room_review_body.dart';

class RoomReview extends StatelessWidget {
  const RoomReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kPrimaryColor,
        elevation: 0,
        title:  const Text('Select Room',style:TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),),
        centerTitle: true,
      ),
      body: RoomReviewBody(),
    );
  }
}
