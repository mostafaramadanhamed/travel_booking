import 'package:flutter/material.dart';
import 'package:travel_booking/features/home/presentaion/views/widgets/v_list_view.dart';
import 'home_non_srollable_widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    List<String> categories=[
      'Hotel',
      'Flight',
      'Train',
      'More',
    ];
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: buildNonScrollable(size, categories,context),
        ),
        SliverFillRemaining(
          child: VListViewTrips(size: size),
        ),
      ],
    ) ;
  }

}