import 'package:flutter/material.dart';
import 'package:to_do_list/constants.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class addTodoModelSheet extends StatelessWidget {
  const addTodoModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            customTextField(
              hintText: "Title",
            ),
            SizedBox(
              height: 20,
            ),
            customTextField(
              hintText: "Content",
              maxLines: 5,
            ),
            SizedBox(height: 16,),
            customButton(),
            SizedBox(height: 16,)
          ],
        ),
      ),
    );
  }
}

