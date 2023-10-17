import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do_list/views/editTodoView.dart';

class customToDoItem extends StatelessWidget {
  const customToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return editTodoView();
        })
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
            color: Color(0xffFFcc80), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Flutter Tips",
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  "Build your career with Kareem ali",
                  style: TextStyle(
                      color: Colors.black.withOpacity(.4), fontSize: 18),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
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
                "May 21,2022",
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
