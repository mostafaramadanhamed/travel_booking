

import 'package:flutter/material.dart';

import 'h_list_view_item.dart';

class HListView extends StatelessWidget {
  const HListView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: SizedBox(
        height: size.height/3.4,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder:(context,index)=> const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.0),
            child:   HListViewItem(),
          ),
        ),
      ),
    );
  }
}
