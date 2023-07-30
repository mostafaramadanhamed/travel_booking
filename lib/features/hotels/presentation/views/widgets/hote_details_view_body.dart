import 'package:flutter/material.dart';

import '../../../../login/presentation/views/widgets/login_button.dart';
import '../select_room_view.dart';
import 'hote_details_list_view.dart';
import 'main_sub_image.dart';

class HotelDetailsViewBody extends StatelessWidget {
  const HotelDetailsViewBody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainImage(size: size),
          Expanded(
            child: HotelDetailsListView(size: size),
          ),
          ButtonBottom(size: size,text: 'Select Room',onPressed: (){
            //todo refactor router
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SelectRoomView(),));
          },),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}




