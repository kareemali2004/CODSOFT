import 'package:flutter/material.dart';
class customSearchIcon extends StatelessWidget {
  const customSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Center(
        child: Icon(Icons.search,size: 28,),
      ),
    );
  }
}
