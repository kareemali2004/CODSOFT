
import 'package:flutter/material.dart';
import 'package:to_do_list/views/widgets/custom_search_icon.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('ToDo',style: TextStyle(
          fontSize: 24,
        ),),
        Spacer(),
        customSearchIcon(),
      ],
    );

  }
}
