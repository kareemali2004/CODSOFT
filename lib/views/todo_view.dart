import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do_list/views/widgets/add_todo_button_sheet.dart';

import 'package:to_do_list/views/widgets/toso_view_body.dart';

class toDoView extends StatelessWidget {
  const toDoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(context: context, builder: (context){
            return  addTodoModelSheet();
        });
      },
        child: Icon(FontAwesomeIcons.add),
      ),
      body: toDoViewBody(),
    );
  }
}

