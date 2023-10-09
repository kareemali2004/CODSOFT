import 'package:flutter/material.dart';
import 'package:to_do_list/screens/home_screen.dart';
import 'package:to_do_list/view/on_boarding_screen.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    DelayedNavigate();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("ToDo",
            style: TextStyle(
                color: Colors.brown, fontSize: 50, fontFamily: "Pacifico",
            fontWeight: FontWeight.bold)),
      ),
    );
  }



  void DelayedNavigate() {
    Future.delayed(Duration(seconds: 3),
            (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return homeScreen();
          }));
        }
    );
  }
}
