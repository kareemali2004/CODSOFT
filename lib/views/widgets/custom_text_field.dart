import 'package:flutter/material.dart';

import '../../constants.dart';
class customTextField extends StatelessWidget {
  const customTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(

        cursorColor: kPraimaryColor,
        decoration: InputDecoration(
          hintText: 'Title',
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