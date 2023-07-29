import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_booking/core/utils/app_color.dart';

import '../../../home/presentaion/views/hotel_details_view.dart';
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
        title:  const Text('Select Room',style:TextStyle(
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
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                const Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      Text('data')
                    ],
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Container(
                        height: size.height/1.2,
                        width:size.width/1.7,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        padding: const EdgeInsets.only(top: 30,),
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
                                Spacer(),
                                Text('1'),
                                Spacer(),
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
                                Spacer(),
                                Text('2'),
                                Spacer(),
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
                                Spacer(),
                                Text('3'),
                                Spacer(),
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
                                Spacer(),
                                Text('4'),
                                Spacer(),
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
                                Spacer(),
                                Text('5'),
                                Spacer(),
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
                                Spacer(),
                                Text('6'),
                                Spacer(),
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
                                Spacer(),
                                Text('7'),
                                Spacer(),
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
                                Spacer(),
                                Text('8'),
                                Spacer(),
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
                            const SizedBox(height: 15,),
                          ],
      ),
    ),

    ],),
    ),
         ], ),
      ),
      ],),
    );

  }
}
