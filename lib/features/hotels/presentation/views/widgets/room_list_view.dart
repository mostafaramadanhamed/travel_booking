import 'package:flutter/material.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/room_list_view_item.dart';

class RoomListView extends StatelessWidget {
  const RoomListView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      padding: const EdgeInsets.only(top:30,left: 30,right: 30),
      itemBuilder: (context, index) {
        return RoomListViewItem(size: size)  ;
      },
    );
  }
}
