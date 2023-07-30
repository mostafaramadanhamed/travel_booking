
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/app_color.dart';

class HListViewItem extends StatelessWidget {
  const HListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:190/220,
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration:  BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(children: [
          Expanded(flex:3,child: Container(
            margin: const EdgeInsets.only(left: 8,top: 8,right: 8,),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(image: NetworkImage('https://img.freepik.com/free-photo/pier-lake-hallstatt-austria_181624-44201.jpg?w=1060&t=st=1690287804~exp=1690288404~hmac=7735d5dafa455360925ed2e09eed3a2453b1ebbf2066b591ddaf474665296cca'),
                  fit: BoxFit.fill,),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 6,
                      spreadRadius: 1,
                      offset: const Offset(1,6  )
                  ),
                ]
            ),
          )),
          Expanded(flex: 2,child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Text('Lake View',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                    Spacer(),
                    Icon(FontAwesomeIcons.solidStar,color: Colors.amber,size: 15,),
                    SizedBox(width:6.3 ,),
                    Text('4.9',),
                  ],
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
                            style: TextStyle(
                              color: AppColor.kSecondaryColor,
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: ' /Person',
                            style: TextStyle(
                              color: AppColor.kBottomNavIconColor,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.favorite,color:AppColor.kSecondaryColor,size: 18,),
                  ],
                ),
              ],
            ),
          ),),
        ],),
      ),
    );
  }
}
