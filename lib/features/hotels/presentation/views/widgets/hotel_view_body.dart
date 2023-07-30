import 'package:flutter/material.dart';
import '../../../../../core/utils/app_color.dart';
import '../hotel_details_view.dart';
import '../hotel_view.dart';

class HotelViewBody extends StatelessWidget {
  const HotelViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return  Stack(
      children: [
        // Container as a background for ListView
       TopContainer(size: size),
        // ListView on top of the container
        ListView.builder(
          itemCount: 5,
          padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HotelDetailsView()));
              },
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                  height: size.height/2.8,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                boxShadow: [
                  const BoxShadow(color: Colors.grey,spreadRadius: 2,blurRadius: 12)
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
              const Text(
              'Royal palm Heritage',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.location_on_rounded,color: Colors.grey.shade800,),
                  const Text(
                  ' New York, USA - 345 m from destination',
                  style: TextStyle(fontSize: 12, color: Colors.grey,overflow: TextOverflow.ellipsis),
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
                    Spacer(),
                TextButton(
                  onPressed: (){},
                  child:  Text(
                    "Book a room",
                    style:const TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),
                  ),
                  style: TextButton.styleFrom(

                      minimumSize: Size(size.width/3, 42),
                      backgroundColor: const Color(0xFFFB9057),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                ),
                  ],
                ),
              ],
              ),
              ),
              ],
              ),
              ),
            )            ;
          },
        ),
      ],
    );
  }
}
class TopContainer extends StatelessWidget {
  const TopContainer({
    super.key,
    required this.size,

  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height/4.5,
      width: size.width,
      decoration: const BoxDecoration(
          color: AppColor.kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(32),
          )
        ),
    );
  }
}
