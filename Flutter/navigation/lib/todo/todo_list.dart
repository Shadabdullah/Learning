import 'package:flutter/material.dart';
import 'package:navigation_todo/todo/detail_screen.dart';
import 'package:navigation_todo/todo/utils/todo.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(todo: todos[index])));
            },
          );
        });
  }
}
