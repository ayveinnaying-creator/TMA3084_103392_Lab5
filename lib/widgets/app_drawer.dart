import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              "StudentHub",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),

          ListTile(leading: Icon(Icons.home), title: Text("Home")),

          ListTile(leading: Icon(Icons.people), title: Text("Students")),

          ListTile(leading: Icon(Icons.table_chart), title: Text("Records")),

          ListTile(leading: Icon(Icons.school), title: Text("Programmes")),

          ListTile(leading: Icon(Icons.info), title: Text("About")),

          ListTile(leading: Icon(Icons.settings), title: Text("Settings")),
        ],
      ),
    );
  }
}
