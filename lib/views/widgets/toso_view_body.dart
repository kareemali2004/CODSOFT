import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/cubits/task_cubit/task_cubit_cubit.dart';
import 'package:to_do_list/views/widgets/to_do_listview.dart';

import 'custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'custom_todo_item.dart';

class toDoViewBody extends StatefulWidget {
  const toDoViewBody({super.key});

  @override
  State<toDoViewBody> createState() => _toDoViewBodyState();
}

class _toDoViewBodyState extends State<toDoViewBody> {
  @override
  void initState() {
     BlocProvider.of<TaskCubit>(context).fetchAllTasks();
  }
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          customAppBar(Title: "ToDo",icon: Icons.search,),
          Expanded(child: toDoListView()),
        ],
      ),
    );
  }
}


