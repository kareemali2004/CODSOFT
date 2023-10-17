import 'package:flutter/material.dart';
class customIcon extends StatelessWidget {
  const customIcon({super.key, required this.icon, this.onTap});
final IconData icon;
final void Function()? onTap;
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
        child: GestureDetector(
          onTap: 
          onTap,
          
          child: Icon(icon,size: 28,)),
      ),
      
    );
  }
}
