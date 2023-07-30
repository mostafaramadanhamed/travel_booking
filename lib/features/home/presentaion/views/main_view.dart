import 'package:flutter/material.dart';
import 'package:travel_booking/core/utils/app_color.dart';
import 'package:travel_booking/core/utils/constants.dart';
import 'package:travel_booking/features/home/presentaion/views/widgets/bottom_nav_bar_item.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(context),

      body: kPages[_currentIndex] ,
    );
  }

  BottomNavigationBar buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        unselectedIconTheme: const IconThemeData(color: AppColor.kBottomNavIconColor),
        items: [
      bottomNavigationBarItem(icon: Icons.home, toolTip: kHome,context: context ),
      bottomNavigationBarItem(icon: Icons.favorite, toolTip: kFavorite,context: context),
      bottomNavigationBarItem(icon: Icons.business_center_rounded, toolTip: kMyBookings,context: context),
      bottomNavigationBarItem(icon: Icons.person_pin, toolTip: kProfile,context: context),

    ],
  onTap: (index) {
    setState(() {
      _currentIndex = index;
    });
  },
    currentIndex: _currentIndex,
      type: BottomNavigationBarType.shifting,
    );
  }
}
