import 'package:flutter/material.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/custom_app_bar.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/select_room_view_body.dart';


class SelectRoomView extends StatelessWidget {
  const SelectRoomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar:customAppBar(title: 'Select Room'),
      body: const SelectRoomViewBody(),
    );
  }
}
