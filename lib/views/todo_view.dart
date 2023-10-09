import 'package:flutter/material.dart';

import 'package:to_do_list/views/widgets/toso_view_body.dart';

class toDoView extends StatelessWidget {
  const toDoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: toDoViewBody(),
    );
  }
}

