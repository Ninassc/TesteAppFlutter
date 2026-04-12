import 'package:basic_app/utils/my_bottom_nav_bar.dart';
import 'package:basic_app/utils/my_drawer.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      bottomNavigationBar: MyBottomNavBar(currentIndex: 0),

      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Navigator.pushNamed(context, '/secondpage');

      //       // Navigator.push(
      //       //   context,
      //       //   MaterialPageRoute(builder: (context) => SecondPage()),
      //       // );
      //     },
      //     child: Text("Go to second page"),
      //   ),
      // ),
    );
  }
}
