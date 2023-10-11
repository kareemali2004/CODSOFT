import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:to_do_list/constants.dart';
import 'package:to_do_list/views/todo_view.dart';
void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kTasksBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        brightness: Brightness.dark
      ),
      home: toDoView(),

    );}}

