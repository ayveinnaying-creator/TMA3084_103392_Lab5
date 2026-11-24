import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About")),
      body: Stack(
        children: [
          Container(height: 220, color: Colors.blue),
          Positioned(
            top: 120,
            left: 20,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 50),
            ),
          ),
          const Positioned(
            top: 230,
            left: 20,
            child: Text(
              "StudentHub Team",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
