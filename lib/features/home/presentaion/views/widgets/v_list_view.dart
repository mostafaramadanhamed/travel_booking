

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_booking/core/utils/styles.dart';

import '../../../../../core/utils/app_color.dart';

class VListViewTrips extends StatelessWidget {
  const VListViewTrips({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      itemCount: 5,
      itemBuilder:(context,index)=> Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child:
        GestureDetector(
          onTap: (){

          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            height: 110,
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 3/3,
                  child: Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    margin: const EdgeInsets.all(8),
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      image: const DecorationImage(image: NetworkImage('https://img.freepik.com/free-photo/young-woman-hiker-taking-photo-with-smartphone-mountains-peak-winter_335224-427.jpg?size=626&ext=jpg&uid=R76923949&ga=GA1.1.409472889.1674466048&semt=ais'),
                        fit: BoxFit.fill,),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right:16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: size.width*0.5,
                          child: const Row(
                            children: [
                              Text('Mountain Trip',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                              Spacer(),
                              Icon(FontAwesomeIcons.solidStar,color: AppColor.kStarColor,size: 15,),
                              SizedBox(width:6.3 ,),
                              Text('4.9',),
                            ],
                          ),
                        ),
                        const SizedBox(height: 6,),
                        const Row(
                          children: [
                            Icon(FontAwesomeIcons.locationDot,color: AppColor.kBottomNavIconColor,size: 16,),
                            SizedBox(width:4 ,),
                            Text('NewYork',style: TextStyle(color: AppColor.kBottomNavIconColor,fontSize: 13),),

                          ],
                        ),
                        const SizedBox(height: 6,),
                        Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: '40\$',
                                    style: Styles.textStyle12,
                                  ),
                                  TextSpan(
                                    text: ' /Person',
                                    style: Styles.textStyle11
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),

          ),
        )
        ,
      ),
    );
  }
}
