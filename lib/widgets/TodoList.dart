import 'package:flutter/material.dart';
import 'package:getitdone/widgets/TodoItem.dart';
import 'package:getitdone/models/Todo.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoData>(
      builder:(context,todoData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(todoData.getTodo(index).title),
              onDismissed: (direction){
                todoData.removeTodo(index);
              },
              child: TodoTile(
                title: todoData.getTodo(index).title,
                isChecked: todoData.getTodo(index).todoCompleted,
                onChanged: (value){
                  todoData.toggleTodo(index);
                },
              ),
            );
          },
          itemCount: todoData.getLength(),
        );
      } ,
    );
  }
}
