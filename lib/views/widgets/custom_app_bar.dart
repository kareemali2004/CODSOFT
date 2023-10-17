
import 'package:flutter/material.dart';
import 'package:to_do_list/views/widgets/custom_search_icon.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key, required this.Title, required this.icon, this.onTap});
final String Title;
final IconData icon;
final void Function()?onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(Title,style: TextStyle(
          fontSize: 24,
        ),),
        Spacer(),
        customIcon(
          onTap:onTap ,
          icon:icon),
      ],
    );

  }
}
