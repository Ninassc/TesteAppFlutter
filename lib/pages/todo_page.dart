import 'package:basic_app/utils/my_bottom_nav_bar.dart';
import 'package:basic_app/utils/my_drawer.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  //text editing controller to get acces to what the user typed
  TextEditingController myController = TextEditingController();

  String greetingMessage = "";

  void greetUser() {
    String userName = myController.text;
    setState(() {
      greetingMessage = "Hello, $userName";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      bottomNavigationBar: MyBottomNavBar(currentIndex: 4),
      appBar: AppBar(title: Text("Todo List")),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage),

              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your name...",
                ),
              ),

              ElevatedButton(onPressed: greetUser, child: Text("Tap")),
            ],
          ),
        ),
      ),
    );
  }
}
