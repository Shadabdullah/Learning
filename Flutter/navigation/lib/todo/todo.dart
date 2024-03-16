import 'package:flutter/material.dart';
import 'todo_list.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text('Todo App'),
        ),
        body: const TodoList());
  }
}
