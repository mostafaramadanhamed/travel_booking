

import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/widgets/text_filed.dart';

class TopHomeContainer extends StatelessWidget {
  const TopHomeContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height/3.5,
      width: size.width,
      decoration: const BoxDecoration(
          color: AppColor.kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(32),
          )
      ),
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50,),
            const Text('Location',style: TextStyle(color: Colors.white,fontSize: 20),),
            const SizedBox(height: 5,),
            const Row(
              children: [
                Icon(Icons.location_on_rounded,size: 26,color: Colors.white,),
                SizedBox(width: 5,),
                Text('New York,Usa',style:TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),),
                Spacer(),
                Icon(Icons.notifications,size: 26,color: Colors.white,),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                const Expanded(child: CustomTextFiled(hint: 'Search any Hotel')),
                const SizedBox(width: 10,),
                Container(width: 60,height:55,decoration: BoxDecoration(
                  color: AppColor.kSecondaryColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                  child:         const Icon(Icons.dehaze,size: 26,color: Colors.white,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
