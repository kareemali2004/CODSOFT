import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/cubits/task_cubit/task_cubit_cubit.dart';
import 'package:to_do_list/models/task_model.dart';

import 'custom_todo_item.dart';

class toDoListView extends StatelessWidget {
  const toDoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskCubit, TaskCubitState>(
      builder: (context, state) {
        List<TaskModel> tasks=BlocProvider.of<TaskCubit>(context).tasks??[];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 1),
          child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: customToDoItem(),
            );
          }),
        );
      },
    );
  }
}
