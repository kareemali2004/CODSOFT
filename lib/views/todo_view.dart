import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/cubits/task_cubit/task_cubit_cubit.dart';

import 'package:to_do_list/views/widgets/add_todo_button_sheet.dart';

import 'package:to_do_list/views/widgets/toso_view_body.dart';

class toDoView extends StatelessWidget {
  const toDoView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                context: context,
                builder: (context) {
                  return addTodoModelSheet();
                });
          },
          child: Icon(
            Icons.check_box,
            size: 30,
          ),
        ),
        body: toDoViewBody(),
      ),
    );
  }
}
