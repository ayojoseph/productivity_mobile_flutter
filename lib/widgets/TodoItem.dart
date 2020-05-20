import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final bool isChecked;
  final Function onChanged;
  final String title;

  TodoTile({this.title,this.isChecked,this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ListTile(

      title: Text(
        title,
        style: isChecked
            ? TextStyle(decoration: TextDecoration.lineThrough)
            : null,
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: onChanged,
      ),
    );
  }
}
//
//(value) {
//setState(() {
//isChecked = value;
//});
//};