import 'package:flutter/material.dart';
import 'package:prova/model/todo.dart';

class TodoController with ChangeNotifier {
  final List<Todo> _items = [];

  void add(Todo task) {
    _items.add(task);
    notifyListeners();
  }

  void remove(Todo task) {
    _items.remove(task);
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }

  List<Todo> get items => _items;
}