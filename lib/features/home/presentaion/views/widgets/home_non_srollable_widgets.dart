


import 'package:flutter/material.dart';
import 'package:travel_booking/features/home/presentaion/views/widgets/top_home_container.dart';

import '../../../../../core/utils/constants.dart';
import 'categories.dart';
import 'h_list_view.dart';
import 'list_view_title.dart';

Column buildNonScrollable(Size size, List<String> categories,BuildContext context) {
  return Column(
    children: [
      TopHomeContainer(size: size),
      const SizedBox(height: 15,),
      Categories(size: size,categories: categories,),
      const SizedBox(
        height: 10,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: ListViewTitle(firstTitle:kNearbyMe),
      ),
      const SizedBox(height: 10,),
      HListView(size: size),
      const SizedBox(height: 10,),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: ListViewTitle(firstTitle:kPopular),
      ),
    ],
  );
}
