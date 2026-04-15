import 'package:basic_app/pages/counter_page.dart';
import 'package:basic_app/pages/home_page.dart';
import 'package:basic_app/pages/profile_page.dart';
import 'package:basic_app/pages/settings_page.dart';
import 'package:basic_app/pages/todo_page.dart';
import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
  final int currentIndex;

  const MyBottomNavBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index) {
        if (index == currentIndex) return; // Não faz nada se já estiver na aba

        switch (index) {
          case 0:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
            break;
          case 1:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
            break;
          case 2:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()),
            );
            break;
          case 3:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => CounterPage()),
            );
            break;
          case 4:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => TodoPage()),
            );
        }
      },
      backgroundColor: const Color.fromARGB(255, 67, 128, 112),
      selectedItemColor: const Color.fromARGB(255, 32, 62, 63),
      unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),

      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        BottomNavigationBarItem(icon: Icon(Icons.plus_one), label: "Counter"),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "Todo"),
      ],
    );
  }
}
