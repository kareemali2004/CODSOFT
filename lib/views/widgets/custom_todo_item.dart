import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/cubits/task_cubit/task_cubit_cubit.dart';
import 'package:to_do_list/models/task_model.dart';
import 'package:to_do_list/views/editTodoView.dart';

class customToDoItem extends StatelessWidget {
  const customToDoItem({super.key, required this.tasks});
   final TaskModel tasks;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return editTodoView(tasks: tasks,);
        })
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
            color: Color(tasks.color), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                tasks.title,
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                 tasks.subTitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(.4), fontSize: 18),
                ),
              ),
      
              trailing: IconButton(
                onPressed: () {
                  tasks.delete();
                  BlocProvider.of<TaskCubit>(context).fetchAllTasks();
                },
                icon: Icon(
                  Icons.check_box_outline_blank,
                  size: 30,
                ),
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                tasks.date,
                style:
                    TextStyle(fontSize: 16, color: Colors.black.withOpacity(.4)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
