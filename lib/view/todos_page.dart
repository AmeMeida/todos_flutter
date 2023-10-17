import 'package:flutter/material.dart';
import 'package:prova/components/add_new.dart';
import 'package:prova/components/remove_all_button.dart';
import 'package:prova/components/todo_list.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todos")
      ),
      body: const Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            AddTodo(),
            Expanded(child: TodoList()),
            RemoveAllButton()
          ],
        ),
      ),
    );
  }
}
