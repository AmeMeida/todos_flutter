import 'package:flutter/material.dart';
import 'package:prova/controller/todo_controller.dart';
import 'package:provider/provider.dart';

class RemoveAllButton extends StatelessWidget {
  const RemoveAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<TodoController>(context);

    return TextButton(
      onPressed: () => controller.removeAll(),
      child: const Text("Remover todos")
    );
  }
}
