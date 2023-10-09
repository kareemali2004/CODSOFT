import 'package:flutter/material.dart';

import '../../constants.dart';
class customTextField extends StatelessWidget {
  const customTextField({super.key, required this.hintText,  this.maxLines=1});
final String hintText;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
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