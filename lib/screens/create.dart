import 'package:blocflutter/bloc/bloc.dart';
import 'package:blocflutter/models/todo.dart';
import 'package:blocflutter/screens/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Create extends StatefulWidget {
  const Create({ Key? key }) : super(key: key);

  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {

  var todo=TextEditingController();
  var description=TextEditingController();
  
  addTodo(){
     context.read<TodoBloc>().eventHandler(Events.add, Todo(name: todo.text,description: description.text));
     todo.clear();
     description.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("create a todo"),
      ),

      body: ListView(
        padding:const EdgeInsets.all(10),
        children:  <Widget>[
          CustomTextInput(text: "todo name", controller: todo),
          const SizedBox(height: 20,),
          CustomTextInput(text: "todo description", controller: description),
          const SizedBox(height: 20,),
          CustomButton(text: "create a todo", method: addTodo,)
        ],
      ),
      
    );
  }
}