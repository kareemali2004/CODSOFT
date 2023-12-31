import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:to_do_list/constants.dart';
import 'package:to_do_list/models/task_model.dart';

part 'task_cubit_state.dart';

class TaskCubit extends Cubit<TaskCubitState> {
  TaskCubit() : super(TaskCubitInitial());
  List<TaskModel>? tasks;
  fetchAllTasks() {

    var taskBox = Hive.box<TaskModel>(kTasksBox);
     tasks=taskBox.values.toList();
    emit(TaskCubitSuccess());
  }
}
