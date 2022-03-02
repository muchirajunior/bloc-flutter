import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextInput extends StatelessWidget {

   String? text;
   TextEditingController? controller;

   CustomTextInput({ Key? key,required this.text, required this.controller }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
                maxLines: 1,
                controller: controller,
                decoration: InputDecoration(
                  labelText: text,
                  floatingLabelBehavior:FloatingLabelBehavior.always,
                  border: const OutlineInputBorder(),          
              )
            );
  }
}