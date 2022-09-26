import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/controllers/todo_controller.dart';




class addScreen extends StatefulWidget {
  static String id = '/add';
  const addScreen({Key? key}) : super(key: key);
  @override
  _addScreen createState() => _addScreen();
}

class _addScreen extends State<addScreen> {
  todoController get _readProductController =>
      context.read<todoController>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();


  late final String _title = _titleController.text;
  late final String _description = _descriptionController.text;

  void addTodo() {
    _readProductController.addTodo(
      _title, _description, );
    Navigator.of(context).pop(context);
  }


  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) => AlertDialog(
    content: Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Add Todo',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 8),
          Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter  title';
                  }
                },
                controller: _titleController,
                decoration: InputDecoration(label: Text("Title")),
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter  description';
                  }
                },
                controller: _descriptionController,
                decoration: InputDecoration(label: Text("Description")),
              ),
              Padding(padding: EdgeInsets.all(20)),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      addTodo();
                    }
                  },
                  child: Text("Add"))

            ],
          )

        ],
      ),
    ),
  );





}





