

import 'package:flutter/material.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/small_button.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import '../room_reviews.dart';
import 'hotel_features.dart';

class RoomListViewItem extends StatelessWidget {
  const RoomListViewItem({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      height: size.height/2.7,
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
          Row(
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Royal palm Heritage',
                      style: Styles.textStyle18.copyWith(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 6,),
                    Text(
                      'Room Size: 34 m2',
                      style: Styles.textStyle16.copyWith(overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                height: 70,
                width: 80,
                decoration:  BoxDecoration(
                  border: Border.all(color: Colors.white70,width: 1),
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.black,
                  image: const DecorationImage(image:
                  NetworkImage(
                    'https://img.freepik.com/free-photo/modern-studio-apartment-design-with-bedroom-living-space_1262-12375.jpg?size=626&ext=jpg&uid=R76923949&ga=GA1.1.409472889.1674466048&semt=ais',
                  ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),


            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Non Refundable',
                  style: TextStyle(fontSize: 16,overflow: TextOverflow.ellipsis),
                ),
                const SizedBox(height: 6,),
                HotelFeatures(size: size),
                const SizedBox(height: 4,),
                const Center(
                    child: Text(
                      "     -   -    -     -    -    -   -    -   -",
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
                      text:  TextSpan(
                        children: [
                          TextSpan(
                              text: '143\$\n',
                              style: Styles.textStyle18.copyWith(color: Colors.black,)
                          ),
                          const TextSpan(
                            text: ' /night',
                            style:Styles.textStyle14,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    SmallButton(size: size,onPressed:(){
                      //todo refactor router
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const RoomReview() ,
                      ));
                    }),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
