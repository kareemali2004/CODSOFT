import 'package:flutter/material.dart';
import 'package:to_do_list/models/task_model.dart';
import 'package:to_do_list/views/widgets/edit_Todo_ViewBody.dart';
class editTodoView extends StatelessWidget {
  const editTodoView({super.key, required this.tasks});
final TaskModel tasks;
  @override
  Widget build(BuildContext context) {
    return editTodoViewBody(tasks: tasks,);
  }
}
