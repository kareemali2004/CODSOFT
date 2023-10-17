import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/cubits/task_cubit/task_cubit_cubit.dart';
import 'package:to_do_list/models/task_model.dart';
import 'package:to_do_list/views/widgets/custom_app_bar.dart';
import 'package:to_do_list/views/widgets/custom_text_field.dart';

class editTodoViewBody extends StatefulWidget {
  const editTodoViewBody({super.key, required this.tasks});
  final TaskModel tasks;

  @override
  State<editTodoViewBody> createState() => _editTodoViewBodyState();
}

class _editTodoViewBodyState extends State<editTodoViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            customAppBar(onTap: () {
              widget.tasks.title=title??widget.tasks.title;
              widget.tasks.subTitle=content??widget.tasks.subTitle;
              widget.tasks.save();
              BlocProvider.of<TaskCubit>(context).fetchAllTasks();
              Navigator.pop(context);
             
            }, Title: "Edit Task", icon: Icons.check),
            SizedBox(
              height: 50,
            ),
            customTextField(
              onChanged: (value) {
                title = value;
              },
              hintText: widget.tasks.title,
            ),
            SizedBox(
              height: 16,
            ),
            customTextField(
              onChanged: (value){
                content=value;
              }
              ,
              hintText: widget.tasks.subTitle,
              maxLines: 5,
            )
          ],
        ),
      ),
    );
  }
}
