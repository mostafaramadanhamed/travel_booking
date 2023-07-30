import 'package:flutter/material.dart';

import 'package:travel_booking/features/hotels/presentation/views/widgets/room_list_view.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/top_container.dart';


class SelectRoomViewBody extends StatelessWidget {
  const SelectRoomViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return  Stack(
      children: [
        // Container as a background for ListView
        TopContainer(size: size),
        // ListView on top of the container
        RoomListView(size: size),
      ],
    );
  }
}




