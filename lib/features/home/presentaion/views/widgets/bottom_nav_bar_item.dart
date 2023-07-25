


import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';

BottomNavigationBarItem bottomNavigationBarItem({
  required IconData icon,
  required String toolTip,
  required BuildContext context,

})=> BottomNavigationBarItem(
  icon: Icon(icon),
  label: '',
  tooltip: toolTip,
  activeIcon: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(32),
      color: AppColor.kPrimaryColor.withOpacity(.2),
    ),
    padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 8),
    width: MediaQuery.of(context).size.width/4,
    child:  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,color:AppColor.kPrimaryColor,size: 28,),
        const SizedBox(width: 4,),
        Expanded(
          child: Text(toolTip,style: const TextStyle(
            color: AppColor.kPrimaryColor,
            fontWeight: FontWeight.w600,
          ),),
        ),
      ],
    ),
  ),
);