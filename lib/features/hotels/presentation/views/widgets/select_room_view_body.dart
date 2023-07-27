import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../home/presentaion/views/hotel_details_view.dart';
import 'hotel_view_body.dart';

class SelectRoomViewBody extends StatelessWidget {
  const SelectRoomViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return  Stack(
      children: [
        // Container as a background for ListView
        TopContainer(size: size),
        // ListView on top of the container
        ListView.builder(
          itemCount: 5,
          padding: const EdgeInsets.only(top:30,left: 30,right: 30),
          itemBuilder: (context, index) {
            return Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              height: size.height/2.8,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(color: Colors.grey,spreadRadius: 2,blurRadius: 12)
                  ],
                  color: Colors.white, // Background color for the item
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Image taking full width and quarter height of the item
                  Row(
                    children: [

                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Royal palm Heritage',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 6,),
                            Text(
                              'Room Size: 34 m2',
                              style: TextStyle(fontSize: 16,overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                        height: 70,
                        width: 80,
                        decoration:  BoxDecoration(
                          border: Border.all(color: Colors.white70,width: 1),
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.black,
                          image: const DecorationImage(image:
                          NetworkImage(
                              'https://img.freepik.com/free-photo/modern-studio-apartment-design-with-bedroom-living-space_1262-12375.jpg?size=626&ext=jpg&uid=R76923949&ga=GA1.1.409472889.1674466048&semt=ais',
                          ),
                          fit: BoxFit.cover,
                          ),
                        ),
                      ),


                    ],
                  ),

                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.only(left: 12,right: 12,top: 12,bottom: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          children: [
                            Icon(Icons.location_on_rounded,color: Colors.grey.shade800,),

                          ],
                        ),
                        const SizedBox(height: 4,),
                        const Reviews(),
                        const Center(
                            child: Text(
                              "     -   -    -    -   -    -    -   -    -   -    -    -    -   -    -   -",
                              maxLines: 1,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColor.kBottomNavIconColor,
                              ),
                            )),
                        const SizedBox(height: 4,),
                        Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: '143\$\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' /night',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: (){},
                              child:  const Text(
                                "Book a room",
                                style:TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),
                              ),
                              style: TextButton.styleFrom(

                                  minimumSize: Size(size.width/3, 42),
                                  backgroundColor: const Color(0xFFFB9057),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )            ;
          },
        ),
      ],
    );
  }
}
