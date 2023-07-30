


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../hotels/presentation/views/hotel_view.dart';
import 'home_category_item.dart';

class Categories extends StatelessWidget {
  const Categories({
    required this.size,
    required this.categories,

    super.key,
  });
  final Size size;
  final List<String>categories;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          InkWell(
              onTap: (){
                //todo refactor router
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const HotelView();
                }));
              },
              child
                  : buildHomeCategoryItem(size, categories[0],icon: FontAwesomeIcons.hotel)),
          const SizedBox(width: 15,),
          buildHomeCategoryItem(size, categories[1],icon: FontAwesomeIcons.plane),
          const SizedBox(width: 15,),

          buildHomeCategoryItem(size, categories[2],icon: FontAwesomeIcons.trainSubway),
          const SizedBox(width: 15,),

          buildHomeCategoryItem(size, categories[3],icon: FontAwesomeIcons.grip),

        ],
      ),
    );
  }
}
