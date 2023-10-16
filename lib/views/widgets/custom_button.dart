import 'package:flutter/material.dart';

import '../../constants.dart';
class customButton extends StatelessWidget {
  const customButton({super.key, this.onTap,  this.isLoading=false});
final void Function()? onTap;
final bool isLoading;
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
            child:isLoading==true? SizedBox(
              height: 30,
              width: 30,
              child: CircularProgressIndicator(
                color: Colors.black,
                
              ),
            ) : Text(
              "Add",
              style: TextStyle(color: Colors.black, fontSize: 18),
            )),
      ),
    );
  }
}