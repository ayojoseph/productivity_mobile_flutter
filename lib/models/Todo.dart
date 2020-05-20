import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Todo {
  final String title;
  bool todoCompleted = false;

  Todo({@required this.title});

  void toggleCompleted(){
    todoCompleted = !todoCompleted;
  }
}

class TodoData extends ChangeNotifier {
  List<Todo> _Todos = [];

  void updateTodos(newTodos){
    _Todos = newTodos;
    notifyListeners();
  }

  void addTodo(String title){
    _Todos.add(Todo(title: title));
    notifyListeners();
  }

  int getLength(){
    return _Todos.length;
  }

  Todo getTodo(index){
    return _Todos[index];
  }

  void toggleTodo(index){
    _Todos[index].toggleCompleted();
    notifyListeners();
  }

  void removeTodo(index){
    _Todos.removeAt(index);
    notifyListeners();
  }
}