import 'package:flutter/material.dart';

import 'custom_todo_icon.dart';
class toDoListView extends StatelessWidget {
  const toDoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: customToDoItem(),
      );
    });
  }
}