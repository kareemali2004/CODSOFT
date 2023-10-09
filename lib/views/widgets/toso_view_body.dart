import 'package:to_do_list/views/widgets/to_do_listview.dart';

import 'custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'custom_todo_icon.dart';

class toDoViewBody extends StatelessWidget {
  const toDoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          customAppBar(),
          Expanded(child: toDoListView()),
        ],
      ),
    );
  }
}


