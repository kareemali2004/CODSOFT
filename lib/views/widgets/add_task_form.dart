import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/cubits/add_task_cubit/add_task_cubit.dart';
import 'package:to_do_list/models/task_model.dart';
import 'package:to_do_list/views/widgets/custom_button.dart';
import 'package:to_do_list/views/widgets/custom_text_field.dart';

class addTaskForm extends StatefulWidget {
  const addTaskForm({
    super.key,
  });

  @override
  State<addTaskForm> createState() => _addTaskFormState();
}

class _addTaskFormState extends State<addTaskForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          customTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: "Title",
          ),
          SizedBox(
            height: 20,
          ),
          customTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: "Content",
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
          customButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var taskModel = TaskModel(
                    title: title!,
                    subTitle: subTitle!,
                    date: DateTime.now().toString(),
                    color: Colors.blue.value);
                BlocProvider.of<AddTaskCubit>(context).addTask(taskModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
