import 'package:blocflutter/bloc/events.dart';
import 'package:blocflutter/models/todo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum Events {add,update,remove}

class TodoBloc extends Cubit<List<Todo>>{
  

  TodoBloc() : super([]);

  void eventHandler(var evt,dynamic data) async{
    switch (evt) {
      case Events.add:
        addTodo(state, data);  
        emit([...state]);
        break;

      case Events.update:
        updateTodo(state, data);
        emit([...state]);
        break;

      case Events.remove:
        deleteTodo(state, data);
        emit([...state]);
        break;
      

      default:
        print(state);
        break;
    }

  }
  
}