


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/app_color.dart';

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
