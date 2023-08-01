

import 'package:flutter/material.dart';
import 'package:travel_booking/features/booking/presentation/views/check_out_view.dart';

import '../../../../login/presentation/views/widgets/login_button.dart';
import 'add_card_text_fields.dart';
import 'book_flight_view_body.dart';

class AddCardViewBody extends StatelessWidget {
  const AddCardViewBody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(children: [
        SmallestContainer(size: size),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 24),
          child: Column(
            children: [
              const NameTextField(),
              const SizedBox(
                height: 10,
              ),
              const CardNumberTextField(),
              const SizedBox(
                height: 10,
              ),
              const EXPTextFields(),
              const SizedBox(
                height: 15,
              ),
              const CountryCode(),
              const SizedBox(
                height: 15,
              ),
              ButtonBottom(size: size, text: 'Add Card', onPressed: (){

                //todo refactor router
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return  const CheckOutView();
                }));

              },),
            ],
          ),
        )
      ]),
    );
  }
}
