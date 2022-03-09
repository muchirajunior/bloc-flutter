library todobloc;

import 'package:blocflutter/models/todo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "events.dart";


enum Events {add,update,remove}

class TodoBloc extends Cubit<List<Todo>>{

  TodoBloc() : super([]);

  void eventHandler(var evt,dynamic data) async{
    switch (evt) {
      case Events.add: addTodo(state, data);  
        break;

      case Events.update: updateTodo(state, data);
        break;

      case Events.remove: deleteTodo(state, data);
        break;

      default: print(state);
        break;
    }

    emit([...state]);
  }
  
}