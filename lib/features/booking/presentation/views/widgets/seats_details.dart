


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/app_color.dart';

class SeatDetails extends StatelessWidget {
  const SeatDetails({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: size.height/4.2,),
          Container(
            width: 140,
            height: 170,
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
            ),
            child: Column(
              children: [
                const SizedBox(height: 7,),
                const Text('Seat'),
                const SizedBox(height: 7,),
                const Row(
                  children: [
                    Icon(FontAwesomeIcons.personChalkboard,color:AppColor.kPrimaryColor,),
                    Spacer(),
                    Text('5B',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: AppColor.kPrimaryColor),)
                  ],
                ),
                const SizedBox(height: 7,),
                const Text('Economy Class',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,),),
                const SizedBox(height: 10,),
                Container(
                  height: 40,
                  width:70,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColor.kPrimaryColor.withOpacity(.2),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child:const Text('\$275',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: AppColor.kPrimaryColor),),
                ),

              ],
            ),
          ),
          const SizedBox(height:40),
          const Text('XYZ',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: AppColor.kPrimaryColor),),
          const SizedBox(height:10),
          const Icon(Icons.flight_outlined,color: AppColor.kPrimaryColor,size: 30,),
          const SizedBox(height:10),
          const Text('NYC',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: AppColor.kPrimaryColor),),
        ],
      ),
    );
  }
}
