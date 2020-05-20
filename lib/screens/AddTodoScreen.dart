import 'package:flutter/material.dart';
import 'package:getitdone/models/Todo.dart';
import 'package:provider/provider.dart';

class AddTodoScreen extends StatelessWidget {
  String todoInput;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Add To-Do',
                style: TextStyle(
                  color: Color(0xffEE9177),
                  fontSize: 30,
                ),
              ),
            ),
            TextField(
              style: TextStyle(),
              decoration: InputDecoration(

               focusedBorder: UnderlineInputBorder(
                 borderSide: BorderSide(
                   color: Color(0xffF7D2AF),
                   style: BorderStyle.solid,
                 ),
               ),
              ),
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                todoInput = value;
              },
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                context.read<TodoData>().addTodo(todoInput);
//                Provider.of<TodoData>(context).Todos.add(Todo(title: todoInput));
                Navigator.pop(context);
              },
              padding: EdgeInsets.symmetric(vertical: 5),
              color: Color(0xffEE9177),
            )
          ],
        ),
      ),
    );
  }
}
