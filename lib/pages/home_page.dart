import 'package:flutter/material.dart';

import 'student_info_page.dart';
import 'student_recd_page.dart';
import 'programme_page.dart';
import 'about_page.dart';
import '../widgets/app_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(title: const Text("StudentHub")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Icon(Icons.school, size: 120, color: Colors.blue),

            const SizedBox(height: 20),

            const Text(
              "Welcome to StudentHub",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Card(
              child: ListTile(
                title: Text("Total Students"),
                trailing: Text("10"),
              ),
            ),

            const Card(
              child: ListTile(title: Text("Programmes"), trailing: Text("3")),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StudentInfoPage(),
                  ),
                );
              },
              child: const Text('View Students'),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StudentRecordsPage(),
                  ),
                );
              },
              child: const Text('Student Records'),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProgrammePage(),
                  ),
                );
              },
              child: const Text('Programmes'),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
              child: const Text('About'),
            ),
          ],
        ),
      ),
    );
  }
}
