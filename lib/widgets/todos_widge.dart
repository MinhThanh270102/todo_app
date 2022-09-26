
import 'package:flutter/cupertino.dart';

import '../models/todo_model.dart';


class TodosProvider extends ChangeNotifier {
  List<todoModel> _todos = [
    todoModel(
      createdTime: DateTime.now(),
      title: 'Buy Food 😋',
      description: '''- Eggs
- Milk
- Bread
- Water''', id: '',
    ),
    todoModel(
      createdTime: DateTime.now(),
      title: 'Plan family trip to Norway',
      description: '''- Rent some hotels
- Rent a car
- Pack suitcase''', id: '',
    ),
    todoModel(
      createdTime: DateTime.now(),
      title: 'Walk the Dog 🐕', id: '',
    ),
    todoModel(
      createdTime: DateTime.now(),
      title: 'Plan Jacobs birthday party 🎉🥳', id: '',
    ),
  ];

  List<todoModel> get todos => _todos.where((todo) => todo.isDone == false).toList();

  List<todoModel> get todosCompleted =>
      _todos.where((todo) => todo.isDone == true).toList();

  void addTodo(todoModel todo) {
    _todos.add(todo);

    notifyListeners();
  }

  void removeTodo(todoModel todo) {
    _todos.remove(todo);

    notifyListeners();
  }

  bool toggleTodoStatus(todoModel todo) {
    todo.isDone = !todo.isDone;
    notifyListeners();

    return todo.isDone;
  }

  void updateTodo(todoModel todo, String title, String description) {
    todo.title = title;
    todo.description = description;

    notifyListeners();
  }
}