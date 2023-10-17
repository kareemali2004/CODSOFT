import 'package:bloc/bloc.dart';
<<<<<<< HEAD
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:to_do_list/constants.dart';
import 'package:to_do_list/models/task_model.dart';
=======
import 'package:meta/meta.dart';
>>>>>>> e16ec808d7c5244908dbae1157e4315a2f6c3a03

part 'add_task_state.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(AddTaskInitial());
<<<<<<< HEAD
  addTask(TaskModel task) async {
    emit(AddTaskLoading());
    try {
      var taskBox = Hive.box<TaskModel>(kTasksBox);
      await taskBox.add(task);
      emit(AddTaskSuccess());
    } catch (e) {
      emit(AddTaskFaliuer(e.toString()));
    }
  }
=======
>>>>>>> e16ec808d7c5244908dbae1157e4315a2f6c3a03
}
