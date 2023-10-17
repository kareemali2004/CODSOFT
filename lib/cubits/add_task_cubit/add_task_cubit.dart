import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';

import 'package:to_do_list/constants.dart';
import 'package:to_do_list/models/task_model.dart';

part 'add_task_state.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(AddTaskInitial());
Color? color;

  addTask(TaskModel task) async {
    task.color=color!.value;
    emit(AddTaskLoading());
    try {
      var taskBox = Hive.box<TaskModel>(kTasksBox);
      await taskBox.add(task);
      emit(AddTaskSuccess());
    } catch (e) {
      emit(AddTaskFaliuer(e.toString()));
    }
  }

}
