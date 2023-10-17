import 'package:flutter/material.dart';
import 'package:prova/model/todo.dart';

class TodoTile extends StatelessWidget {
  final Todo todo;

  const TodoTile({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.task),
      title: Text(todo.task),
      trailing: const Icon(Icons.check_box_outline_blank),
    );
  }
}