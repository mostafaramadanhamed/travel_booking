

import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

AppBar CustomAppBar({
  required String title

}) {
  return AppBar(
    backgroundColor: AppColor.kPrimaryColor,
    elevation: 0,
    title:   Text(title,style:Styles.textStyle20),
    centerTitle: true,
  );
}