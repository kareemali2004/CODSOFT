import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:to_do_list/models/task_model.dart';

part 'task_cubit_state.dart';

class TaskCubitCubit extends Cubit<TaskCubitState> {
  TaskCubitCubit() : super(TaskCubitInitial());
}
