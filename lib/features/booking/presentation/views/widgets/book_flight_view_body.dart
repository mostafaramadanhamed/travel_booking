

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../login/presentation/views/widgets/login_button.dart';
import '../add_passenger_view.dart';
import 'custom_card.dart';
import 'flight_direction.dart';

class BookFlightViewBody extends StatelessWidget {
  const BookFlightViewBody({
    required this.dateTime,
    required this.dateTime2,
    required this.showPickerData ,
    required this.showPickerData2 ,
    super.key, required this.size,
  });

  final void Function()? showPickerData;
  final void Function()? showPickerData2;
  final DateTime dateTime;
  final DateTime dateTime2;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SmallestContainer(size: size),
        const FlightDirection(),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Stack(
                children: [
                  const CustomCard(subTitle: 'New York', title: 'From', icon: FontAwesomeIcons.planeArrival,),
                  Positioned(
                    right: 16,
                    top: 22,
                    child: FloatingActionButton(
                      backgroundColor: Colors.white,
                      onPressed: () {},
                      child:  const FaIcon(FontAwesomeIcons.arrowDownUpAcrossLine,
                          color:Colors.black54, size: 15),
                    ),
                  ),
                ],
              ),
              const CustomCard(subTitle: 'Toronto', title: 'To', icon: FontAwesomeIcons.locationDot,iconColor: Colors.red,),
              CustomCard(subTitle: DateFormat.yMMMEd().format(dateTime).toString() ,title: 'Departure', icon: FontAwesomeIcons.calendarDays,onTap: showPickerData,),
              CustomCard(subTitle:  DateFormat.yMMMEd().format(dateTime2).toString(), title: 'Return', icon: FontAwesomeIcons.calendarDays,onTap: showPickerData2,),
              const CustomCard(subTitle: '1 Passenger', title: 'Passenger', icon: FontAwesomeIcons.person,),
              const CustomCard(subTitle: 'Economy', title: 'Class', icon: FontAwesomeIcons.chalkboardUser,),
              const SizedBox(height: 15,),
              ButtonBottom(size: size, text: "Search", onPressed: (){
                //todo refactor router
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return  const AddPassengerView();
                }));
              }),
            ],
          ),
        ),
      ]),
    );
  }
}

class SmallestContainer extends StatelessWidget {
  const SmallestContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height/15,
      width: size.width,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
          color: AppColor.kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(32),
          )
      ),
    );
  }
}
