import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_booking/core/utils/app_color.dart';
import 'package:travel_booking/features/login/presentation/views/widgets/login_button.dart';
import '../../../hotels/presentation/views/widgets/hotel_view_body.dart';

class SeatsView extends StatelessWidget {
  const SeatsView({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kPrimaryColor,
        elevation: 0,
        title:  const Text('Select Seats',style:TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Container as a background for ListView
          TopContainer(size: size),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Expanded(
                      flex: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: size.height/4.2,),
                          Container(
                            width: 140,
                            height: 170,
                            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              children: [
                                const SizedBox(height: 7,),
                                const Text('Seat'),
                                const SizedBox(height: 7,),
                                const Row(
                                  children: [
                                    Icon(FontAwesomeIcons.personChalkboard,color:AppColor.kPrimaryColor,),
                                    Spacer(),
                                    Text('5B',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: AppColor.kPrimaryColor),)
                                  ],
                                ),
                                const SizedBox(height: 7,),
                                const Text('Economy Class',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,),),
                                const SizedBox(height: 10,),
                                Container(
                                  height: 40,
                                  width:70,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: AppColor.kPrimaryColor.withOpacity(.2),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child:const Text('\$275',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: AppColor.kPrimaryColor),),
                                ),

                              ],
                            ),
                          ), 
                          SizedBox(height:40),
                          Text('XYZ',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: AppColor.kPrimaryColor),),
                          SizedBox(height:10),
                          Icon(Icons.flight_outlined,color: AppColor.kPrimaryColor,size: 30,),
                          SizedBox(height:10),
                          Text('NYC',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: AppColor.kPrimaryColor),),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          PlaneShape(size: size),

    ],),
    ),
         ], ),
                LoginButton(size: size, text: "Confirm", onPressed: (){}),
              ],
            ),
      ),
      ],),
    );

  }
}

class PlaneShape extends StatelessWidget {
  const PlaneShape({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height/1.3,
      width:size.width/1.9,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      padding: const EdgeInsets.only(top: 30,),
      margin: EdgeInsets.zero,
      decoration:  BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(120),
            topLeft: Radius.circular(120),
          ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300,
          blurRadius: 12,
          spreadRadius: 1,
        ),
      ]
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(
height: 40,
width: 40,
decoration: BoxDecoration(
color: AppColor.kPrimaryColor.withOpacity(.4)
),
),
              Container(
height: 40,
width: 40,
decoration: BoxDecoration(
color: AppColor.kPrimaryColor.withOpacity(.4)
),
),
              Container(
height: 40,
width: 40,
decoration: BoxDecoration(
color: AppColor.kPrimaryColor.withOpacity(.4)
),
),
              Container(
height: 40,
width: 40,
decoration: BoxDecoration(
color: AppColor.kPrimaryColor.withOpacity(.4)
),
),

          ]      ,
          ),
          const SizedBox(height: 40,),
          const Text('Business Class',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 5,),
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('A'),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const Spacer(),
              const Text('1'),
              const Spacer(),

              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('D'),
              ),
              const SizedBox(width: 5,),
            ]      ,
          ),
          const SizedBox(height: 5,),
          Row(
            children: [
              const SizedBox(width: 5,),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('B'),
              ),
              const Spacer(),
              const Text('2'),
              const Spacer(),
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('C'),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 5,),
            ]      ,
          ),
          const SizedBox(height: 5,),
          Row(
            children: [
              const SizedBox(width: 5,),
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('A'),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('B'),
              ),
              const Spacer(),
              const Text('3'),
              const Spacer(),
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('C'),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('D'),
              ),
              const SizedBox(width: 5,),
            ]      ,
          ),
          const SizedBox(height: 40,),
          const Text('Economy Class',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('A'),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('C'),
              ),
              const Spacer(),
              const Text('1'),
              const Spacer(),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('D'),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('F'),
              ),  const SizedBox(width: 5,),
            ]      ,
          ),
          const SizedBox(height: 5,),
          Row(
            children: [
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('B'),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const Spacer(),
              const Text('2'),
              const Spacer(),
      Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          color: AppColor.kPrimaryColor.withOpacity(.4),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('E'),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),  const SizedBox(width: 5,),
            ]      ,
          ),
          const SizedBox(height: 5,),
          Row(
            children: [
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('A'),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('C'),
              ),
              const Spacer(),
              const Text('3'),
              const Spacer(),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('D'),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('F'),
              ),  const SizedBox(width: 5,),
            ]      ,
          ),
          const SizedBox(height: 5,),
          Row(
            children: [
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('B'),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const Spacer(),
              const Text('4'),
              const Spacer(),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('E'),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),  const SizedBox(width: 5,),
            ]      ,
          ),
          const SizedBox(height: 5,),
          Row(
            children: [
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('A'),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('C'),
              ),
              const Spacer(),
              const Text('5'),
              const Spacer(),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('D'),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('F'),
              ),  const SizedBox(width: 5,),
            ]      ,
          ),
          const SizedBox(height: 5,),
          Row(
            children: [
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('B'),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const Spacer(),
              const Text('6'),
              const Spacer(),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('E'),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),  const SizedBox(width: 5,),
            ]      ,
          ),
          const SizedBox(height: 5,),
          Row(
            children: [
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('A'),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('C'),
              ),
              const Spacer(),
              const Text('7'),
              const Spacer(),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('D'),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor.withOpacity(.4),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('F'),
              ),  const SizedBox(width: 5,),
            ]      ,
          ),
          const SizedBox(height: 15,),
        ],
      ),
    );
  }
}
