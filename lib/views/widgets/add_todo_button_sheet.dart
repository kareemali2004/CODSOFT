import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:to_do_list/cubits/add_task_cubit/add_task_cubit.dart';
import 'package:to_do_list/views/widgets/add_task_form.dart';

class addTodoModelSheet extends StatelessWidget {
  const addTodoModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddTaskCubit(),
      child: BlocConsumer<AddTaskCubit, AddTaskState>(
        listener: (context, state) {
          if (state is AddTaskFaliuer) {
            print("failed ${state.erorMsg}");
          }
          if (state is AddTaskSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            
            absorbing: state is AddTaskLoading ? true : false,
            
            child: Padding(
              
                padding:  EdgeInsets.only(left: 20,right: 20,
                bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: SingleChildScrollView(child: addTaskForm())),
          );
        },
      ),
    );
  }
}
