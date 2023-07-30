


import 'package:flutter/material.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/reviews.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_divider.dart';
import 'features_list_view.dart';
import 'hotel_location.dart';
import 'hotel_name_price.dart';

class HotelDetailsListView extends StatelessWidget {
  const HotelDetailsListView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const HotelNameAndPrice(),
        const SizedBox(height: 10,),
        // location
        const HotelLocation(),
        const SizedBox(height: 10,),
        // divider
        const CustomDivider(),
        const SizedBox(height: 10,),
        const Reviews(),
        const SizedBox(height: 10,),
        const CustomDivider(),
        const SizedBox(height: 10,),
        RichText(text:  TextSpan(
            children: [
              TextSpan(text: 'Information',style:Styles.textStyle22.copyWith(color: Colors.black),),
              const  TextSpan(text: '\n I must explain to you how all this mistaken idea of reprobating pleasure and extolling pain arose. To do so, I will give you a complete account of the system, and expound the actual tea',style:Styles.textStyle14,),
            ]
        )),
        const SizedBox(height: 30,),
        FeaturesListViewH(size: size),
        const SizedBox(height: 30,),
      ],
    );
  }
}
