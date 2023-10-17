
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/task_model.dart';
import 'colors_list_view.dart';

class editTaskColorsList extends StatefulWidget {
  const editTaskColorsList({super.key, required this.task});
  final TaskModel task;
  @override
  State<editTaskColorsList> createState() => _editTaskColorsListState();
}

class _editTaskColorsListState extends State<editTaskColorsList> {
  _editTaskColorsListState();
  late int currentIndex;

  @override
  void initState() {
    currentIndex=kColors.indexOf(Color(widget.task.color));

  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: GestureDetector(
            onTap: (){
              currentIndex=index;
              widget.task.color=kColors[index].value;
              setState(() {

              });

            },
            child: colorItem(
              color: kColors[index],
              isActive: currentIndex==index,
            ),
          ),
        ),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
      ),
    );;
  }
}