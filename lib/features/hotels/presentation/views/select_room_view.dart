import 'package:flutter/material.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/select_room_view_body.dart';

import '../../../../core/utils/app_color.dart';

class SelectRoomView extends StatelessWidget {
  const SelectRoomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      backgroundColor: AppColor.kPrimaryColor,
      elevation: 0,
      title:  const Text('Select Room',style:TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),),
      centerTitle: true,
    ),
      body: const SelectRoomViewBody(),
    );
  }
}
