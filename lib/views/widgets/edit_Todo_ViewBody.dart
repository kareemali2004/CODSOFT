import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do_list/views/widgets/custom_app_bar.dart';
import 'package:to_do_list/views/widgets/custom_text_field.dart';

class editTodoViewBody extends StatelessWidget {
  const editTodoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 50,),
            customAppBar(Title: "Edit Task",icon:Icons.check),
            SizedBox(height: 50,),
            customTextField(hintText: 'Title',),
            SizedBox(height: 16,),
            customTextField(hintText: 'Contet',maxLines: 5,)
          ],
        ),
      ),
    );
  }
}
