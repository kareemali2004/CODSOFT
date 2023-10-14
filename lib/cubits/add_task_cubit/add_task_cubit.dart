import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:to_do_list/constants.dart';
import 'package:to_do_list/models/task_model.dart';

part 'add_task_state.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(AddTaskInitial());
  addTask(TaskModel task) async {
    emit(AddTaskLoading());
    try {
      var taskBox = Hive.box<TaskModel>(kTasksBox);
      emit(AddTaskSuccess());
      await taskBox.add(task);
    } catch (e) {
      AddTaskFaliuer(e.toString());
    }
  }
}
