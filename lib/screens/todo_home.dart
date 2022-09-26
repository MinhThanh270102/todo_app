import 'package:flutter/material.dart';
import 'add_screen.dart';
enum FilterOptions { sortName, newest}
class todoHomeScreen extends StatefulWidget {


  @override
  State<todoHomeScreen> createState() => _todoHomeScreenState();
  int selectedIndex = 0;

  var _showOnlyName = false;
  var _showNewest = false;
}

class _todoHomeScreenState extends State<todoHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
        actions:<Widget> [
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue){
              setState(() {}
              );
            },
            icon: Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('A-Z'),
                value: FilterOptions.sortName,
              ),
              PopupMenuItem(
                child: Text('Newest'),
                value: FilterOptions.newest,
              )
            ],)
        ],
      ),




      // body: Center(
      //   child: Text('Empty'),
      // ),

      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.black,
        onPressed: () => showDialog(
          context: context,
          builder: (context) => addScreen(),
          barrierDismissible: false,
        ),
        child: Icon(Icons.add),
      ),
    );
  }

}
