import 'package:basic_app/utils/my_bottom_nav_bar.dart';
import 'package:basic_app/utils/my_drawer.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Profile Page"),
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: MyBottomNavBar(currentIndex: 1),

       body: Center(
        child: Text("Profile Page"),
      ),
    );
  }
}
