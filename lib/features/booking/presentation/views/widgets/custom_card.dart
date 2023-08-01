

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.title,
    required this.subTitle,
    this.iconColor=AppColor.kPrimaryColor,
    this.onTap,
    required this.icon,
  });

  final String title;
  final IconData icon;
  final String subTitle;
  final Color iconColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)),
      child:  ListTile(
        leading:  FaIcon(icon,
            color:iconColor),
        title:  Text(
          title,
          style:Styles.textStyle12.copyWith(color: Colors.black54),
        ),
        subtitle: Text(
          subTitle,
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600,fontSize: 15),
        ),
        onTap: onTap,
      ),
    );
  }
}
