


import 'package:flutter/material.dart';
import 'package:travel_booking/core/utils/styles.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/reviews.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/small_button.dart';

import '../../../../../core/utils/app_color.dart';
import '../hotel_details_view.dart';

class HotelItem extends StatelessWidget {
  const HotelItem({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //todo refactor router
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HotelDetailsView()));
      },
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        height: size.height/2.8,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(color: Colors.grey,spreadRadius: 2,blurRadius: 12)
            ],
            color: Colors.white, // Background color for the item
            borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Image taking full width and quarter height of the item
            Image.network(
              'https://img.freepik.com/free-photo/popular-resort-amara-dolce-vita-luxury-hotel-with-pools-water-parks-recreational-area-along-sea-coast-turkey-sunset-tekirova-kemer_146671-18759.jpg?size=626&ext=jpg&uid=R76923949&ga=GA1.1.409472889.1674466048&semt=sph',
              fit: BoxFit.cover,
              height:85,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12,right: 12,top: 12,bottom: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    'Royal palm Heritage',
                    style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.location_on_rounded,color: Colors.grey.shade800,),
                       Text(
                        ' New York, USA - 345 m from destination',
                        style: Styles.textStyle12.copyWith(
                            color: Colors.grey,overflow: TextOverflow.ellipsis
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4,),
                  const Reviews(),
                  const Center(
                      child: Text(
                        "     -   -    -    -   -    -    -   -    -   -    -    -    -   -    -   -",
                        maxLines: 1,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.kBottomNavIconColor,
                        ),
                      )),
                  const SizedBox(height: 4,),
                  Row(
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '143\$\n',
                                style: Styles.textStyle18,
                            ),
                            TextSpan(
                              text: ' /night',
                              style: Styles.textStyle14
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      SmallButton(size: size, onPressed: (){}),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
