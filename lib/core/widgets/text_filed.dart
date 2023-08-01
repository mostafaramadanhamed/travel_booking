
import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({Key? key,
    this.onChange ,
    required this.hint,
    this.maxLines=1,
    this.onSaved,
    this.keyboardType=TextInputType.text,  this.obscureText=false,
  }) : super(key: key) ;

  final String ?hint;
  final bool obscureText;
  final void Function(String?)? onSaved;
  final Function(String) ? onChange;
  final int maxLines;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onChanged: onChange,
      onSaved: onSaved,
      keyboardType:keyboardType ,
      validator: (val){
        if(val?.isEmpty??true){
          return 'Field is required';
        }
        else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: const Color(0xFF1FC9C2),
      decoration: InputDecoration(
         fillColor: Colors.grey.shade100,
          filled: true,
          label: Text(hint!,style:  TextStyle(
            color: Colors.grey.shade600,
            fontWeight: FontWeight.w600,
          ),),
       //   errorStyle: Styles.textStyle14.copyWith(fontSize: 12),
          // labelStyle: Styles.textStyle24,

          focusedBorder: buildBorder(border: 8,color: Colors.black ),
          enabledBorder: buildBorder(border: 8,color: Colors.grey),
          border:buildBorder(border: 8, color: Colors.grey,)
      ),
    );
  }

}
OutlineInputBorder buildBorder({
  required double border,
  required Color color,
}) {
  return OutlineInputBorder(
      borderSide:  BorderSide(
       color: color,
      ),
      borderRadius: BorderRadius.circular(border)
  );
}