
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class ListViewTitle extends StatelessWidget {
  const ListViewTitle({
    super.key,required this.firstTitle,
  });
  final String firstTitle;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(firstTitle,style: Styles.textStyle18),
        const Spacer(),
        const  Text(kSeeAll,style: TextStyle(
          color: AppColor.kSecondaryColor,
        ),),
      ],
    );
  }
}
