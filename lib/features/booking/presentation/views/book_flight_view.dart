
import 'package:flutter/material.dart';
import 'package:travel_booking/features/booking/presentation/views/widgets/book_flight_view_body.dart';
import '../../../hotels/presentation/views/widgets/custom_app_bar.dart';

class BookFlightView extends StatefulWidget {
  const BookFlightView({super.key});

  @override
  State<BookFlightView> createState() => _BookFlightViewState();
}

class _BookFlightViewState extends State<BookFlightView> {
  DateTime datetime = DateTime.now();
  DateTime datetime2 = DateTime.now();

  void showPickerData() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    ).then((value) {
      setState(() {
        datetime = value!;
      });
    });
  }

  void showPickerData2() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    ).then((value) {
      setState(() {
        datetime2 = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: customAppBar(title: 'Book Your Flight'),
      body: BookFlightViewBody(dateTime: datetime,dateTime2: datetime2,showPickerData: showPickerData,showPickerData2: showPickerData2, size: size,),

    );
  }
}



