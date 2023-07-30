import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_booking/core/utils/app_color.dart';
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



SizedBox buildCategoryItem(Size size,String categories,{required IconData icon,}) {
  return SizedBox(
    child: Column(
      children: [
        Container(
          height: size.height/22,
          width: size.width/11,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColor.kPrimaryColor.withOpacity(0.2),
          ),
          child: Icon(icon,color: AppColor.kPrimaryColor,size: 20,),
        ),
        const SizedBox(height: 7,),
        Text(categories,style: const TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
      ],
    ),
  );
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

class MainImage extends StatelessWidget {
  const MainImage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: size.width,
      height: size.height / 2.5,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: NetworkImage(
            'https://img.freepik.com/free-photo/luxury-classic-modern-bedroom-suite-hotel_105762-1787.jpg?size=626&ext=jpg&uid=R76923949&ga=GA1.1.409472889.1674466048&semt=sph',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: SubImages(size: size),
    );
  }
}

class SubImages extends StatelessWidget {
  const SubImages({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: size.height / 12,
            width: size.width / 6,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 6, color: Colors.white70),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://img.freepik.com/free-photo/type-entertainment-complex-popular-resort-with-pools-water-parks-turkey-with-more-than-5-million-visitors-year-amara-dolce-vita-luxury-hotel-resort-tekirova-kemer_146671-18728.jpg?size=626&ext=jpg&uid=R76923949&ga=GA1.1.409472889.1674466048&semt=sph',
                  ),
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            height: size.height / 12,
            width: size.width / 6,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 6, color: Colors.white70),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://img.freepik.com/free-photo/view-dubai-marina-sunrise-uae_268835-1056.jpg?size=626&ext=jpg&uid=R76923949&ga=GA1.1.409472889.1674466048&semt=sph',
                  ),
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            height: size.height / 12,
            width: size.width / 6,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 6, color: Colors.white70),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://img.freepik.com/free-photo/croissant-boiled-egg-orange-juice-yogurt-breakfast-tray-bed-hotel-room_176474-2601.jpg?size=626&ext=jpg&uid=R76923949&ga=GA1.1.409472889.1674466048&semt=sph',
                  ),
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            height: size.height / 12,
            width: size.width / 6,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                width: 6,
                color: Colors.white70,
              ),
              image: DecorationImage(
                image: NetworkImage(
                  'https://img.freepik.com/free-photo/beautiful-umbrella-chair-around-swimming-pool-hotel-resort_74190-2153.jpg?w=740&t=st=1690365578~exp=1690366178~hmac=09ad2fb6b64a2893ef004584af7533c41bd88e677d4e739ebb0b3bbb548dfb8e',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
                height: size.height / 12,
                width: size.width / 6,
                decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.black, Colors.black54]),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white70,
                ),
                child: Center(
                    child: Text(
                  '+8',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.white),
                ))),
          ),
        ],
      ),
    );
  }
}
