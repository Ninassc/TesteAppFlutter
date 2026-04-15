import "package:basic_app/utils/my_bottom_nav_bar.dart";
import "package:basic_app/utils/my_drawer.dart";
import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 248, 255),
      appBar: AppBar(
        title: Text("Home Page"),      
        backgroundColor: Color.fromARGB(255, 240, 248, 255),
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: MyBottomNavBar(currentIndex: 0),

      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
