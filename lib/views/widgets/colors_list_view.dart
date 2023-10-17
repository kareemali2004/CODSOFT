
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/cubits/add_task_cubit/add_task_cubit.dart';


class colorItem extends StatelessWidget {
  const colorItem({super.key, required this.isActive, required this.color});
final bool isActive;
final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive? CircleAvatar(
      backgroundColor: color,
      radius: 34,
      child: CircleAvatar(
        backgroundColor: color,
        radius: 32,
      ),
    ): CircleAvatar(
      backgroundColor: color,
      radius: 32,
    );
  }
}

class colorsListView extends StatefulWidget {
   colorsListView({super.key});

  @override
  State<colorsListView> createState() => _colorsListViewState();
}

class _colorsListViewState extends State<colorsListView> {
int currentIndex=0;
List<Color>colors=[
  Color(0xffCDC392),
  Color(0xffE8E5DA),
  Color(0xff9EB7E5),
  Color(0xff648DE5),
  Color(0xff304C89),
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: GestureDetector(
            onTap: (){
              currentIndex=index;
              BlocProvider.of<AddTaskCubit>(context).color=colors[index];
             setState(() {

             });

            },
            child: colorItem(
              color: colors[index],
                isActive: currentIndex==index,
            ),
          ),
        ),
        itemCount: 5,
         scrollDirection: Axis.horizontal,
      ),
    );
  }
}