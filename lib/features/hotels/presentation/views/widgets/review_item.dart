

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/app_color.dart';
class ReviewItem extends StatelessWidget {
  const ReviewItem({
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
      margin: const EdgeInsets.symmetric(vertical: 10),
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
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                height: 50,
                width: 60,
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Mostafa Ramadan',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 8,),
                        Icon(FontAwesomeIcons.solidStar,color: Colors.amber,size: 10,),
                        SizedBox(width: 3,),
                        Icon(FontAwesomeIcons.solidStar,color: Colors.amber,size: 10,),
                        SizedBox(width: 3,),
                        Icon(FontAwesomeIcons.solidStar,color: Colors.amber,size: 10,),
                        SizedBox(width: 3,),
                        Icon(FontAwesomeIcons.solidStar,color: Colors.amber,size: 10,),
                        SizedBox(width: 3,),
                        Icon(FontAwesomeIcons.solidStar,color: Colors.amber,size: 10,),

                      ],
                    ),
                    SizedBox(height: 6,),
                    Text(
                      '24 minutes ago',
                      style: TextStyle(fontSize: 14,overflow: TextOverflow.ellipsis),
                    ),
                  ],
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
                  'Non  RefundableRefundable Refundable Refundable Refundable RefundableRefundable Refundable Refundable Refundable Refundable RefundableRefundable Refundable',
                  style: TextStyle(fontSize: 16,overflow: TextOverflow.ellipsis),maxLines: 2,
                ),
                Row(children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                    height: 60,
                    width: 70,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black,
                      image: const DecorationImage(image:
                      NetworkImage(
                        'https://img.freepik.com/free-photo/modern-studio-apartment-design-with-bedroom-living-space_1262-12375.jpg?size=626&ext=jpg&uid=R76923949&ga=GA1.1.409472889.1674466048&semt=ais',
                      ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                    height: 60,
                    width: 70,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black,
                      image: const DecorationImage(image:
                      NetworkImage(
                        'https://img.freepik.com/free-photo/modern-studio-apartment-design-with-bedroom-living-space_1262-12375.jpg?size=626&ext=jpg&uid=R76923949&ga=GA1.1.409472889.1674466048&semt=ais',
                      ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],),
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
                    const Icon(FontAwesomeIcons.solidThumbsUp),
                    const SizedBox(width: 8,),
                    const Text(
                      '24',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(flex: 1,),
                    const Icon(FontAwesomeIcons.solidThumbsDown),
                    const SizedBox(width: 8,),
                    const Text(
                      '2',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(flex: 2,),

                    IconButton(
                      onPressed: (){
                        //todo router
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SeatsView() ,
                        // ));
                      },
                      icon:  const Icon(FontAwesomeIcons.ellipsis),
                    ),
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
