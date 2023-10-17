
import 'package:flutter/material.dart';

class colorItem extends StatelessWidget {
  const colorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.blue,
      radius: 32,
    );
  }
}
class colorsListView extends StatelessWidget {
  const colorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        itemBuilder: (context, index) => colorItem(),
        itemCount: 10,
         scrollDirection: Axis.horizontal,
      ),
    );
  }
}