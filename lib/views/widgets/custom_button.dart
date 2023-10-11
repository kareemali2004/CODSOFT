import 'package:flutter/material.dart';

import '../../constants.dart';
class customButton extends StatelessWidget {
  const customButton({super.key, this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(8),
          color: kPraimaryColor,
        ),
        width: MediaQuery.of(context).size.width,
        height: 40,
        child: Center(
            child: Text(
              "Add",
              style: TextStyle(color: Colors.black, fontSize: 18),
            )),
      ),
    );
  }
}