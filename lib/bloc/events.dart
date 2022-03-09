part of 'todobloc.dart';


void addTodo(List state,var data){
    data.id=state.length+1;
    state.add(data);
}

void updateTodo(List<Todo> state, Todo td){
  var todo=state.where((element) => element==td).first;
  todo.iscompleted= ! todo.iscompleted;
}

void deleteTodo(List<Todo> state, Todo todo){
  state.remove(todo);
}