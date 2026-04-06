import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
        backgroundColor: Colors.blueGrey,
      ),

      drawer: Drawer(
        backgroundColor: Colors.blueAccent,
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
                color: const Color.fromARGB(228, 255, 255, 255),
              ),
            ),

            ListTileTheme(
              iconColor: Colors.white,
              textColor: Colors.white,

              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("HOME"),
                    onTap: () {
                      Navigator.pushNamed(context, "/homepage");
                    },
                  ),

                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("SETTINGS"),
                  ),

                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("PROFILE"),
                    onTap: () {
                      Navigator.pushNamed(context, "/profile");
                    },
                  ),

                  ListTile(
                    leading: Icon(Icons.favorite),
                    title: Text("FAVORITES"),
                    onTap: () {
                      Navigator.pushNamed(context, "/favorites");
                    },
                  ),

                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text("NOTIFICATIONS"),
                    onTap: () {
                      Navigator.pushNamed(context, "/notifications");
                    },
                  ),

                  ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text("CART"),
                    onTap: () {
                      Navigator.pushNamed(context, "/cart");
                    },
                  ),

                  ListTile(
                    leading: Icon(Icons.history),
                    title: Text("HISTORY"),
                    onTap: () {
                      Navigator.pushNamed(context, "/history");
                    },
                  ),

                  ListTile(
                    leading: Icon(Icons.help_outline),
                    title: Text("HELP"),
                    onTap: () {
                      Navigator.pushNamed(context, "/help");
                    },
                  ),

                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text("ABOUT"),
                    onTap: () {
                      Navigator.pushNamed(context, "/about");
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

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
