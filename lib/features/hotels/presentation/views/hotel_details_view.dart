import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_booking/core/utils/app_color.dart';
import 'package:travel_booking/core/utils/styles.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/build_category_item.dart';
import 'package:travel_booking/features/hotels/presentation/views/select_room_view.dart';
import 'package:travel_booking/features/login/presentation/views/widgets/login_button.dart';

class HotelDetailsView extends StatelessWidget {
  const HotelDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainImage(size: size),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  HotelNameAndPrice(),
                  const SizedBox(height: 10,),
                  // location
                  Row(
                    children: [
                      Icon(Icons.location_on_rounded,size: 26,color: Colors.grey.shade800,),
                      const SizedBox(width: 5,),
                      Text('New York, USA',style:TextStyle(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  // divider
                  const Center(
                      child: Text(
                        "     -   -    -    -   -    -    -   -    -   -    -    -    -   -    -   -",
                        maxLines: 1,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.kBottomNavIconColor,
                        ),
                      )),
                  const SizedBox(height: 10,),
                  Reviews(),
                  const SizedBox(height: 10,),
                  const Center(
                      child: Text(
                        "     -   -    -    -   -    -    -   -    -   -    -    -    -   -    -   -",
                        maxLines: 1,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.kBottomNavIconColor,
                        ),
                      )),
                  const SizedBox(height: 10,),
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(text: 'Information',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                        TextSpan(text: '\n I must explain to you how all this mistaken idea of reprobating pleasure and extolling pain arose. To do so, I will give you a complete account of the system, and expound the actual tea',style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        )),
                      ]
                  )),
                  const SizedBox(height: 30,),
                  FeaturesListViewH(size: size),
                  const SizedBox(height: 30,),
                ],
              ),
            ),
            ButtonBottom(size: size,text: 'Select Room',onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SelectRoomView(),));
            },),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}

class FeaturesListViewH extends StatelessWidget {
  const FeaturesListViewH({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          buildCategoryItem(size, 'Free \nWifi', icon: FontAwesomeIcons.wifi),
          const SizedBox(width: 20,),
          buildCategoryItem(size, 'Non-\nRefundable', icon: FontAwesomeIcons.dollarSign),
          const SizedBox(width: 20,),
          buildCategoryItem(size, 'Free \nBreakfast', icon: FontAwesomeIcons.utensils),
          const SizedBox(width: 20,),

          buildCategoryItem(size, 'Non-\nSmoking', icon: FontAwesomeIcons.banSmoking),
          const SizedBox(width: 20,),

          buildCategoryItem(size, 'More', icon: FontAwesomeIcons.ellipsis),

        ],
      ),
    );
  }
}










class Reviews extends StatelessWidget {
  const Reviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
     children: [
       Icon(FontAwesomeIcons.solidStar,color: Colors.amber,size: 15,),
       SizedBox(width:6.3 ,),
       Text('4.9',style: TextStyle(
         fontSize: 16,
       ),),
       Text(' (3241  reviews)  ',style: TextStyle(
         fontSize: 16,
       ),),
       Spacer(),
       Text('See All',style: TextStyle(
         color: AppColor.kSecondaryColor,
         fontSize: 16,
         fontWeight: FontWeight.w600,
       ),),
     ],
           );
  }
}

class HotelNameAndPrice extends StatelessWidget {
  const HotelNameAndPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const HotelName(),
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: '143\$',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: ' /night',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HotelName extends StatelessWidget {
  const HotelName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Grand Luxury's",
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
