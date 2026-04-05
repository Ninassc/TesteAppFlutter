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
      home: Scaffold(
        //backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("App Bar"),
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
        ),

        // body: Center(
        //   child: GestureDetector(
        //     onTap: userTapped,

        //     child: Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.deepPurple[300],
        //       child: Center(child: Text("Tap Me")),
        //     ),
        //   ),
        // ),

        // body: Stack(
        //   alignment: Alignment.bottomRight,
        //   children: [
        //     Container(
        //       height: 300,
        //       width: 300,
        //       color: Colors.deepPurple,
        //     ),
        //     Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.deepPurple[200],
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.deepPurple[300],
        //     ),
        //   ],
        // ),

        // body: GridView.builder(
        //   itemCount: 64,

        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 4,
        //   ),

        //   itemBuilder: (context, index) => Container(
        //     color: Colors.purple,
        //     margin: EdgeInsets.all(5),
        //     child: Center(
        //       child: Text(
        //         "AAAAAA",
        //         style: TextStyle(
        //           color: Colors.white,
        //           fontWeight: FontWeight.w600,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),

        // body: ListView.builder(
        //   itemCount: names.length,
        //   itemBuilder: (context, index) => ListTile(
        //     title: Text(names[index]),
        //   ),
        // ),

        // body: Center(
        //   child: Container(
        //     height: 300,
        //     width: 300,
        //     padding: EdgeInsets.all(25),
        //     decoration: BoxDecoration(
        //       color: Colors.orange,
        //       borderRadius: BorderRadius.circular(20),
        //     ),
        //     child: Text(
        //       "Nina Sepúlveda",
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 28,
        //         fontWeight: FontWeight.w600,
        //       ),
        //     ),
        //   ),
        // ),

        // body: Column(
        //   //crossAxisAlignment: CrossAxisAlignment.end,
        //   //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Expanded(
        //       flex: 2,
        //       child: Container(color: Colors.deepPurple[200]),
        //     ),

        //     Expanded(
        //       child: Container(color: Colors.deepPurple[100]),
        //     ),

        //     Expanded(child: Container(color: Colors.deepPurple[400])),
        //   ],
        // ),

        // body: ListView(
        //   children: [
        //     Container(height: 350, color: Colors.deepPurple[200]),

        //     Container(height: 350, color: Colors.deepPurple[500]),

        //     Container(height: 350, color: Colors.deepPurple[400]),
        //   ],
        // ),
      ),
    );
  }
}
