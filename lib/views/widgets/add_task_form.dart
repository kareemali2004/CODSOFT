
import 'package:flutter/material.dart';
import 'package:to_do_list/views/widgets/custom_button.dart';
import 'package:to_do_list/views/widgets/custom_text_field.dart';

class addTaskForm extends StatefulWidget {
  const addTaskForm({
    super.key,
  });

  @override
  State<addTaskForm> createState() => _addTaskFormState();
}

class _addTaskFormState extends State<addTaskForm> {
  final GlobalKey<FormState>formKey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          customTextField(
            onSaved: (value){
              title=value;
            },
            hintText: "Title",
          ),
          SizedBox(
            height: 20,
          ),
          customTextField(
            onSaved: (value){
              subTitle=value;
            },
            hintText: "Content",
            maxLines: 5,
          ),
          SizedBox(height: 16,),
          customButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }
              else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {

                });
              }
            },
          ),
          SizedBox(height: 16,)
        ],
      ),
    );
  }
}

