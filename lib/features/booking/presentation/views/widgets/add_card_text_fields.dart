



import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CountryCode extends StatelessWidget {
  const CountryCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color:  Colors.grey.shade400,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const CountryCodePicker(
        initialSelection: 'EG',
        showCountryOnly: false,
        showOnlyCountryWhenClosed: true,
        favorite: ['+02', 'EG'],
        alignLeft: true,
        padding: EdgeInsets.all(16.0),
      ),
    );
  }
}

class EXPTextFields extends StatelessWidget {
  const EXPTextFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            style: const TextStyle(
                fontSize: 15,
                color: Color(0XFF242424),
                fontWeight: FontWeight.bold),
            decoration: InputDecoration(
                label: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Exp. Date',
                  ),
                ),
                labelStyle: const TextStyle(
                  fontSize: 13,
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.date_range,
                      color: Color(0XFFBDF5F0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide:  BorderSide(
                    color: Colors.grey.shade400,
                  ),
                )),
            keyboardType: TextInputType.datetime,
            inputFormatters: [
              LengthLimitingTextInputFormatter(5),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: TextFormField(
            style: const TextStyle(
                fontSize: 15,
                color: Color(0XFF242424),
                fontWeight: FontWeight.bold),
            decoration: InputDecoration(
                label: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'CVV',
                  ),
                ),
                labelStyle: const TextStyle(
                  fontSize: 13,
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FaIcon(FontAwesomeIcons.idCardClip,
                      color: Color(0XFFBDF5F0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide:  BorderSide(
                    color: Colors.grey.shade400,
                  ),
                )),
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(4),
            ],
          ),
        ),
      ],
    );
  }
}

class CardNumberTextField extends StatelessWidget {
  const CardNumberTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
          fontSize: 15,
          color: Color(0XFF242424),
          fontWeight: FontWeight.bold),
      decoration: InputDecoration(
          label: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Card Number',
            ),
          ),
          labelStyle: const TextStyle(
            fontSize: 13,
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.all(8.0),
            child: FaIcon(FontAwesomeIcons.idCard,
                color: Color(0XFFBDF5F0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.black,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:  BorderSide(
              color: Colors.grey.shade400,
            ),
          )),
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(19),
      ],
    );
  }
}

class NameTextField extends StatelessWidget {
  const NameTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
          fontSize: 15,
          color: Color(0XFF242424),
          fontWeight: FontWeight.bold),
      decoration: InputDecoration(
          label: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Name',
            ),
          ),
          labelStyle: const TextStyle(
            fontSize: 13,
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.person, color: Color(0XFFBDF5F0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:  const BorderSide(
              color: Colors.black,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:  BorderSide(
              color: Colors.grey.shade400,
            ),
          )),
      keyboardType: TextInputType.text,
    );
  }
}
