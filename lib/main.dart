
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/controllers/todo_controller.dart';
import 'package:todo_app/screens/add_screen.dart';
import 'package:todo_app/screens/todo_home.dart';

import 'widgets/todos_widge.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Todo App';

  @override
   Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create:  (ctx) => todoController()..allProducts,
      ),

    ],
      // create: (context) => TodosProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData(
            primarySwatch: Colors.pink,
            scaffoldBackgroundColor: Color(0xFFf6f5ee),
          ),
          home: todoHomeScreen(),
          routes:{
            addScreen.id: (ctx) => const addScreen(),
          },
        ),
    );
  }

}