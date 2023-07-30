
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

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
        Text(categories,style: Styles.textStyle10,),
      ],
    ),
  );
}
