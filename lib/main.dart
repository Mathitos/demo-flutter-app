import 'package:flutter/material.dart';

void main() => runApp(ToDoList());

class ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Todo List',
      home: new Scaffold(
          appBar: new AppBar(
              title: new Text('Todo List')
          )
      ),
    );
  }
}
