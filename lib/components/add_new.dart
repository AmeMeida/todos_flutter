import 'package:flutter/material.dart';
import 'package:prova/controller/todo_controller.dart';
import 'package:prova/model/todo.dart';
import 'package:provider/provider.dart';

class AddTodo extends StatefulWidget {
  final void Function(String value)? onChanged;

  const AddTodo({super.key, this.onChanged});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final todoController = Provider.of<TodoController>(context, listen: false);
    final key = GlobalKey<FormState>();

    return Form(
      key: key,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: taskController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Insira uma tarefa!";
                }
          
                return null;
              },
            ),
          ),
          TextButton(
            onPressed: () {
              if (!key.currentState!.validate()) {
                return;
              }

              final task = taskController.text.trim();
              todoController.add(Todo(task));

              taskController.clear();
            }, 
            child: const Text("Adicionar")
          )
        ],
      )
    );
  }
}