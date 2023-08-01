import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_booking/core/utils/app_color.dart';
import 'package:travel_booking/features/booking/presentation/views/add_cart_view.dart';
import 'package:travel_booking/features/booking/presentation/views/widgets/book_flight_view_body.dart';
import 'package:travel_booking/features/hotels/presentation/views/widgets/custom_app_bar.dart';
import 'package:travel_booking/features/login/presentation/views/widgets/login_button.dart';

class AddPassengerView extends StatefulWidget {
  const AddPassengerView({super.key});

  @override
  State<AddPassengerView> createState() => _AddPassengerViewState();
}

class _AddPassengerViewState extends State<AddPassengerView> {

  int num = 2;
  void increment() {
    setState(() {
      num++;
    });
  }

  void decrement() {
    if (num < 1) {
      return;
    }
    setState(() {
      num--;
    });
  }

  int num2 = 1;
  void increment2() {
    setState(() {
      num2++;
    });
  }

  void decrement2() {
    if (num2 < 1) {
      return;
    }
    setState(() {
      num2--;
    });
  }

  int num3 = 1;
  void increment3() {
    setState(() {
      num3++;
    });
  }

  void decrement3() {
    if (num3 < 1) {
      return;
    }
    setState(() {
      num3--;
    });
  }
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: customAppBar(title: 'Add Passenger'),
      body:Column(
        children: [
         SmallestContainer(size: size),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8,),
            child: Column(

              children: [
                buildAdultContainer(),
                buildChildContainer(),
                buildInfantContainer(),
                ButtonBottom(size: size, text: 'Done', onPressed: (){

                  //todo refactor router
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return  const AddCardView();
                  }));

                },),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildAdultContainer() {
    return Container(
                height: 72,
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 7,
                      color: Colors.grey,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.person,
                        color: AppColor.kPrimaryColor,
                      ),
                      const SizedBox(width: 20,),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Adult',
                            style: TextStyle(
                                color: Color(0XFF242424),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text('Age +12',
                              style:
                              TextStyle(color: Color(0XFF7B7B7B), fontSize: 10)),
                        ],
                      ),
                      const Spacer(),
                      FloatingActionButton.small(
                        backgroundColor: const Color(0XFF1FC9C2),
                        onPressed: decrement,
                        child: const Icon(Icons.remove,
                            color: Colors.white, size: 15),
                      ),
                      const SizedBox(width: 4,),
                      Text('$num',
                          style: const TextStyle(
                              color: Color(0XFF242424),
                              fontSize: 17,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(width: 4,),
                      FloatingActionButton.small(
                        backgroundColor: const Color(0XFF1FC9C2),
                        onPressed: increment,
                        child: const Icon(Icons.add,
                            color: Colors.white, size: 18),
                      ),
                    ],
                  ),
                ),
              );
  }

  Container buildChildContainer() {
    return Container(
                height: 72,
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 7,
                      color: Colors.grey,

                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.child,
                        color: AppColor.kPrimaryColor,
                      ),
                      const SizedBox(width: 20,),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Child',
                            style: TextStyle(
                                color: Color(0XFF242424),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text('Age 2-11',
                              style:
                              TextStyle(color: Color(0XFF7B7B7B), fontSize: 10)),
                        ],
                      ),
                      const Spacer(),
                      FloatingActionButton.small(
                        backgroundColor:const Color(0XFFBDF5F0),
                        onPressed: decrement2,
                        child: const Icon(Icons.remove,
                            color: Colors.white, size: 15),
                      ),
                      const SizedBox(width: 4,),
                      Text('$num2',
                          style: const TextStyle(
                              color: Color(0XFF242424),
                              fontSize: 17,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(width: 4,),
                      FloatingActionButton.small(
                        backgroundColor: const Color(0XFF1FC9C2),
                        onPressed: increment2,
                        child: const Icon(Icons.add,
                            color: Colors.white, size: 18),
                      ),
                    ],
                  ),
                ),
              );
  }

  Container buildInfantContainer() {
    return Container(
                height: 72,
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 7,
                      color: Colors.grey,

                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.baby,
                        color: AppColor.kPrimaryColor,
                      ),
                      const SizedBox(width: 20,),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Infant',
                            style: TextStyle(
                                color: Color(0XFF242424),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text('Age 0-2',
                              style:
                              TextStyle(color: Color(0XFF7B7B7B), fontSize: 10)),
                        ],
                      ),
                      const Spacer(),
                      FloatingActionButton.small(
                        backgroundColor:const Color(0XFFBDF5F0),
                        onPressed: decrement3,
                        child: const Icon(Icons.remove,
                            color: Colors.white, size: 15),
                      ),
                      const SizedBox(width: 4,),
                      Text('$num3',
                          style: const TextStyle(
                              color: Color(0XFF242424),
                              fontSize: 17,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(width: 4,),
                      FloatingActionButton.small(
                        backgroundColor: const Color(0XFF1FC9C2),
                        onPressed: increment3,
                        child: const Icon(Icons.add,
                            color: Colors.white, size: 18),
                      ),
                    ],
                  ),
                ),
              );
  }
}