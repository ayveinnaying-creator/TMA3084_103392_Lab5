import 'package:flutter/material.dart';

class ProgrammePage extends StatelessWidget {
  const ProgrammePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Programmes'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'SE'),
              Tab(text: 'CS'),
              Tab(text: 'DS'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                'Software Engineering Students',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Center(
              child: Text(
                'Computer Science Students',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Center(
              child: Text(
                'Data Science Students',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
