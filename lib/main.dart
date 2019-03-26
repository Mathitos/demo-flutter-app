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
  List<String> todoItems = ["oi", "como", "vai", "você"];

  void addItem() {
    setState(() {
      int index = todoItems.length;
      todoItems.add('Item ' + index.toString());
    });
  }

  Widget buildTodoList() {
    return new ListView.builder(
      itemBuilder: (context, index) {
        if(index < todoItems.length) {
          return buildTodoItem(todoItems[index]);
        }
      },
    );
  }

  Widget buildTodoItem(String todoText) {
    return new ListTile(
        title: new Text(todoText)
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text('Todo List')
        ),
        body: buildTodoList(),
    );
  }
}
