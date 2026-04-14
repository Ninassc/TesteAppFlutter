import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 89, 132, 153), // Azul mais acinzentado (Blue Grey)
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(
              Icons.favorite,
              size: 48,
              color: Color.fromARGB(228, 255, 255, 255),
            ),
          ),
          ListTileTheme(
            iconColor: Colors.white,
            textColor: Colors.white,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text("HOME"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/homepage");
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text("PROFILE"),
                  onTap: () {
                    Navigator.pushNamed(context, "/profilepage");
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text("SETTINGS"),
                  onTap: () => Navigator.pushNamed(context, "/settingspage"),
                ),
                ListTile(
                  leading: const Icon(Icons.favorite),
                  title: const Text("FAVORITES"),
                  onTap: () {
                    Navigator.pushNamed(context, "/favorites");
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.notifications),
                  title: const Text("NOTIFICATIONS"),
                  onTap: () {
                    Navigator.pushNamed(context, "/notifications");
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_cart),
                  title: const Text("CART"),
                  onTap: () {
                    Navigator.pushNamed(context, "/cart");
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.history),
                  title: const Text("HISTORY"),
                  onTap: () {
                    Navigator.pushNamed(context, "/history");
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.help_outline),
                  title: const Text("HELP"),
                  onTap: () {
                    Navigator.pushNamed(context, "/help");
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: const Text("ABOUT"),
                  onTap: () {
                    Navigator.pushNamed(context, "/about");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
