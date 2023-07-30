

import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';

SizedBox buildHomeCategoryItem(Size size,String categories,{required IconData icon,}) {
  return SizedBox(
    child: Column(
      children: [
        Container(
          height: size.height/10,
          width: size.width/5.5,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Icon(icon,color: AppColor.kPrimaryColor,),
        ),
        const SizedBox(height: 7,),
        Text(categories,style: const TextStyle(fontWeight: FontWeight.w600),),
      ],
    ),
  );
}
