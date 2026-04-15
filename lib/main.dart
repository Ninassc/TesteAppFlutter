import 'package:basic_app/pages/counter_page.dart';
import 'package:basic_app/pages/home_page.dart';
import 'package:basic_app/pages/profile_page.dart';
import 'package:basic_app/pages/settings_page.dart';
import 'package:basic_app/pages/todo_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // List<String> names = ["Nina", "Pedro", "Marcos", "Felipe"];

  // void userTapped(){
  //   print("User tapped!");
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "/homepage": (context) => HomePage(),
        "/settingspage" : (context) => SettingsPage(),
        "/profilepage" : (context) => ProfilePage(),
        "/counterpage" : (context) => CounterPage(),
        "todopage" : (context) => TodoPage()
        },
    );
  }
}
