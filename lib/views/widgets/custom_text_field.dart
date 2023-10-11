import 'package:flutter/material.dart';

import '../../constants.dart';
class customTextField extends StatelessWidget {
  const customTextField({super.key, required this.hintText,  this.maxLines=1, this.onSaved});
final String hintText;
final int maxLines;
final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
        validator: (value){
        if(value?.isEmpty??true)
          {
            return"Field is required";
          }
        else
          {
            return null;
          }
        },
        maxLines: maxLines,
        cursorColor: kPraimaryColor,
        decoration: InputDecoration(
          hintText: hintText,

          hintStyle: TextStyle(color: kPraimaryColor),
          enabledBorder: buildborder(),
          border: buildborder(kPraimaryColor),

        )
    )
    ;
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(

        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(

          color: color?? Colors.white,
        )
    );
  }}