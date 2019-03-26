import 'package:flutter/material.dart';

void main() => runApp(ToDoListApp());

class ToDoListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
              title: 'Todo List',
              home: new TodoList()
          );
  }
}

class TodoList extends StatefulWidget {
  @override
  createState() => new TodoListState();
}

class TodoListState extends State<TodoList> {
  List<String> todoItems = [];

  void addItem() {
    setState(() {
      int index = todoItems.length;
      todoItems.add('Item ' + index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text('Todo List')
        )
    );
  }
}
