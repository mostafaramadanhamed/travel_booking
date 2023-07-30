



import 'package:flutter/material.dart';

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
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
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
                image: const DecorationImage(
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
                image: const DecorationImage(
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
                image: const DecorationImage(
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
              image: const DecorationImage(
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
                  const LinearGradient(colors: [Colors.black, Colors.black54]),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white70,
                ),
                child: const Center(
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