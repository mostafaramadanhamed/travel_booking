
import 'package:flutter/material.dart';

import 'hotel_list_view_item.dart';

class HotelListView extends StatelessWidget {
  const HotelListView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
      itemBuilder: (context, index) {
        return HotelItem(size: size) ;
      },
    );
  }
}
