


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_booking/core/utils/app_color.dart';
import 'package:travel_booking/core/utils/styles.dart';

class AllReviews extends StatelessWidget {
  const AllReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      height: 120,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: Colors.grey,spreadRadius: 2,blurRadius: 12)
        ],
        color: Colors.white, // Background color for the item
        borderRadius: BorderRadius.circular(16),
      ),
      child:  Row(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                RichText(
                  text:  const TextSpan(
                    children: [
                      TextSpan(
                        text: '4.6',
                        style: Styles.textStyle22,
                      ),
                      TextSpan(
                        text: '/5\n',
                        style:Styles.textStyle16
                      ),
                      TextSpan(
                        text: 'based on 125 Reviews',
                        style:Styles.textStyle16,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8,),
                const Row(
                  children: [
                    Star(),
                    SizedBox(width: 5,),
                    Star(),
                    SizedBox(width: 5,),
                    Star(),
                    SizedBox(width: 5,),
                    Star(),
                    SizedBox(width: 5,),
                    Star(),
                  ],
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReviewBar(value: 1,),
                SizedBox(height: 12,),
                ReviewBar(value: 0.8,),
                SizedBox(height: 12,),
                ReviewBar(value: 0.6,),
                SizedBox(height: 12,),
                ReviewBar(value: 0.4,),
                SizedBox(height: 12,),
                ReviewBar(value: 0.2,),

              ],
            ),
          ),
        ],
      ),

    );
  }
}

class ReviewBar extends StatelessWidget {
  const ReviewBar({
    super.key, required this.value,
  });
  final double value;

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(color: Colors.amber,value: value  ,backgroundColor: Colors.grey,);
  }
}

class Star extends StatelessWidget {
  const Star({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Icon(FontAwesomeIcons.solidStar,color:AppColor.kStarColor,size: 14,);
  }
}
