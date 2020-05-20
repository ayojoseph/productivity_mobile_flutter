import 'package:flutter/material.dart';
import 'package:getitdone/screens/TaskScreen.dart';
import 'package:provider/provider.dart';
import 'package:getitdone/models/Todo.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Todo> Todos = [];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TodoData>(
      create: (_)=> TodoData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}







