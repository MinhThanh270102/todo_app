import 'package:flutter/cupertino.dart';

import '../models/todo_model.dart';

class todoController with ChangeNotifier {
  final List<todoModel?> _allProducts = [];
  final Map<String, todoModel> _items = {};

  Map<String, todoModel> get items {
    return {..._items};

  }
  int get itemCount {
    return _items.length;
  }
  List<todoModel?> get allProducts => [..._allProducts];
  get allPro => allProducts;

  void addTodo(String title, String description,) {
    todoModel todomodel = todoModel(
        id: DateTime.now().toString() ,
      title: title,
      description: description,
      createdTime: DateTime.now(), );
    _allProducts.add(todomodel);
    print(allProducts.length);
    notifyListeners();

  }
}