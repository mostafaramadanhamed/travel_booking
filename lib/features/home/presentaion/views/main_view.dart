import 'package:flutter/material.dart';
import 'package:travel_booking/core/app_color.dart';

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
      bottomNavigationBar: BottomNavigationBar(
          unselectedIconTheme: const IconThemeData(color: AppColor.kBottomNavIconColor),
          items: [
        bottomNavigationBarItem(icon: Icons.home, toolTip: 'Home',context: context ),
        bottomNavigationBarItem(icon: Icons.favorite, toolTip: 'Favorite',context: context),
        bottomNavigationBarItem(icon: Icons.business_center_rounded, toolTip: 'My bookings',context: context),
        bottomNavigationBarItem(icon: Icons.person_pin, toolTip: 'Profile',context: context),

      ],
    onTap: (index) {
      // When a tab is tapped, update the state to reflect the selected tab
      setState(() {
        _currentIndex = index;
      });
    },
      currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
      ),

      body: const Column(
        children: [Text('data')],
      ),
    );
  }
}

BottomNavigationBarItem bottomNavigationBarItem({
  required IconData icon,
  required String toolTip,
required BuildContext context,

})=> BottomNavigationBarItem(
  icon: Icon(icon),
  label: '',
  tooltip: toolTip,
  activeIcon: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(32),
      color: AppColor.kPrimaryColor.withOpacity(.2),
    ),
    padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 8),
    width: MediaQuery.of(context).size.width/4,
    child:  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,color:AppColor.kPrimaryColor,size: 28,),
        const SizedBox(width: 4,),
        Expanded(
          child: Text(toolTip,style: const TextStyle(
            color: AppColor.kPrimaryColor,
            fontWeight: FontWeight.w600,
          ),),
        ),
      ],
    ),
  ),
);