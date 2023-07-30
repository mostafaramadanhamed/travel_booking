import 'package:flutter/material.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/hote_details_view_body.dart';


class HotelDetailsView extends StatelessWidget {
  const HotelDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context),
      body: HotelDetailsViewBody(size: size),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        'Hotel Details',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 22),
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 28,
        ),
      ),
      elevation: 0,
    );
  }
}

