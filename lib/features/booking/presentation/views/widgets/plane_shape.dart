


import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';

class PlaneShape extends StatelessWidget {
  const PlaneShape({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height/1.2,
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
