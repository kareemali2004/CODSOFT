part of 'add_task_cubit.dart';

@immutable
sealed class AddTaskState {}

final class AddTaskInitial extends AddTaskState {}
final class AddTaskLoading extends AddTaskState {}
final class AddTaskSuccess extends AddTaskState {}
final class AddTaskFaliuer extends AddTaskState {
  final String erorMsg;

  AddTaskFaliuer(this.erorMsg);
}

