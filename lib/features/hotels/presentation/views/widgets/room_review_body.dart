import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/review_item.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/top_container.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../booking/presentation/views/seats_view.dart';
import 'all_reviews.dart';

class RoomReviewBody extends StatelessWidget {
  const RoomReviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return  Stack(
      children: [
        // Container as a background for ListView
        TopContainer(size: size),

        // ListView on top of the container
        ReviewsListView(size: size),
      ],
    );

  }
}

class ReviewsListView extends StatelessWidget {
  const ReviewsListView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top:20,left: 30,right: 30),
      children: [
        AllReviews(),
        ReviewItem(size: size),
        ReviewItem(size: size),
        ReviewItem(size: size),
      ],
    );
  }
}


