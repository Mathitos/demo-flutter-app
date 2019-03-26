import 'package:flutter/material.dart';

void main() => runApp(ToDoListApp());

class ToDoListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'Todo List', home: new TodoList());
  }
}

class TodoList extends StatefulWidget {
  @override
  createState() => new TodoListState();
}

class TodoListState extends State<TodoList> {
  List<String> todoItems = [];

  void addItem(String value) {
    setState(() {
      todoItems.add(value);
    });
  }

  Widget buildTodoList() {
    return new ListView.builder(
      itemBuilder: (context, index) {
        if (index < todoItems.length) {
          return buildTodoItem(todoItems[index]);
        }
      },
    );
  }

  Widget buildTodoItem(String todoText) {
    return new ListTile(title: new Text(todoText));
  }

  void pushAddTodoScreen() {
    Navigator.of(context).push(
        new MaterialPageRoute(
            builder: (context) {
              return new Scaffold(
                  appBar: new AppBar(
                      title: new Text('Add a new task')
                  ),
                  body: new TextField(
                    autofocus: true,
                    onSubmitted: (val) {
                      addItem(val);
                      Navigator.pop(context);
                    },
                    decoration: new InputDecoration(
                        hintText: 'Enter something to do...',
                        contentPadding: const EdgeInsets.all(16.0)
                    ),
                  )
              );
            }
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Todo List')),
      body: buildTodoList(),
      floatingActionButton: new FloatingActionButton(
          onPressed: pushAddTodoScreen, tooltip: 'Add task', child: new Icon(Icons.add)),
    );
  }
}
