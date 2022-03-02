import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Function? method;
  String? text;

  CustomButton({ Key? key, required this.text, required this.method }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ()=>method!(),
      child: const Text("create"),
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).primaryColor
      )
      
    );
  }
}