import 'package:flutter/material.dart';

class HotelDetailsView extends StatelessWidget {
  const HotelDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Hotel Details',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 22),),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        },icon: Icon(Icons.arrow_back,color: Colors.black,size: 28,),),
        elevation: 0,
      ),
      body: Column(

      ),
    );
  }
}
