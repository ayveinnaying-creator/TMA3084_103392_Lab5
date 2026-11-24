import 'package:flutter/material.dart';

import '../models/student.dart';

class StudentDetailsPage extends StatelessWidget {
  final Student student;

  const StudentDetailsPage({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(student.name)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(radius: 50, child: Icon(Icons.person, size: 50)),
            const SizedBox(height: 20),
            Text(
              student.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            SelectableText("Matric No: ${student.matricNo}"),
            const SizedBox(height: 10),
            Text("Programme: ${student.programme}"),
            const SizedBox(height: 10),
            SelectableText("Email: ${student.email}"),
          ],
        ),
      ),
    );
  }
}
