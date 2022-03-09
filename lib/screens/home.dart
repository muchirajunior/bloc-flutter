
import 'package:blocflutter/bloc/todobloc.dart';
import 'package:blocflutter/models/todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title:const  Text("bloc todo app"),
        actions: [
          IconButton(
            onPressed: ()=> Navigator.pushNamed(context, "/create"),
           icon: const Icon(Icons.create)
           )
        ],
      ),

      body: BlocBuilder<TodoBloc, List<Todo>>(
        builder: (context,todos)=> ListView(

          children: todos.map((todo) => Card(
            child: ListTile(   
              leading:Text(todo.id.toString()) ,
              title: Row(
                children: [
                  Text(todo.name.toString()),
                  todo.iscompleted ? const Icon(Icons.done) :const Text("")
                ],
              ),
              subtitle: Text(todo.description.toString()),
              trailing: IconButton(
                onPressed: ()=>context.read<TodoBloc>().eventHandler(Events.remove, todo),
                icon: const Icon(Icons.delete),
              ),
              tileColor: todo.iscompleted ? Colors.grey[200] : Colors.white,
              onTap: ()=> context.read<TodoBloc>().eventHandler(Events.update, todo),
            )
          )).toList(),
        ),
      ),


    );
  }
}