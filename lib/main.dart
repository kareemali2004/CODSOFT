import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:to_do_list/constants.dart';

import 'package:to_do_list/cubits/task_cubit/task_cubit_cubit.dart';
import 'package:to_do_list/models/task_model.dart';
import 'package:to_do_list/simple_observer.dart';
import 'package:to_do_list/views/todo_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlockObserver();
  Hive.registerAdapter(TaskModelAdapter());
  await Hive.openBox<TaskModel>(kTasksBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
       create: (context) => TaskCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),
        home: toDoView(),
      ),
    );
  }
}
