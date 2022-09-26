class TodoField {
  static const createdTime = 'createdTime';
}

class todoModel {
  DateTime createdTime;
  String title;
  String id;
  String description;
  bool isDone;

  todoModel({
    required this.createdTime,
    required this.title,
    this.description = '',
    required this.id,
    this.isDone = false,
  });
}