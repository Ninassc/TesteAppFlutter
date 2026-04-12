import "package:basic_app/utils/my_bottom_nav_bar.dart";
import "package:basic_app/utils/my_drawer.dart";
import "package:flutter/material.dart";

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings Page"),
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: MyBottomNavBar(currentIndex: 2),

       body: Center(
        child: Text("Settings Page"),
      ),
    );
  }
}
