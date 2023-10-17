part of 'task_cubit_cubit.dart';

@immutable
sealed class TaskCubitState {}

final class TaskCubitInitial extends TaskCubitState {}
final class TaskCubitLoad extends TaskCubitState {}
final class TaskCubitSucccess extends TaskCubitState {
  final List<TaskModel> tasks;

  TaskCubitSucccess(this.tasks);
}
final class TaskCubitFailuer extends TaskCubitState {
  final String erorMsg;

  TaskCubitFailuer(this.erorMsg);
}
