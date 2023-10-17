import 'package:flutter/material.dart';
import 'package:prova/components/todo_tile.dart';
import 'package:prova/controller/todo_controller.dart';
import 'package:provider/provider.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TodoController>(context).items;

    return ListView.separated(
      itemCount: todos.length,
      itemBuilder: (context, index) => TodoTile(todo: todos[index]),
      separatorBuilder: (context, index) => const Divider()
    );
  }
}