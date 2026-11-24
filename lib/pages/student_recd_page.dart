import 'package:flutter/material.dart';

import '../models/student.dart';
import '../models/student_data.dart';

class StudentRecordsPage extends StatefulWidget {
  const StudentRecordsPage({super.key});

  @override
  State<StudentRecordsPage> createState() => _StudentRecordsPageState();
}

class _StudentRecordsPageState extends State<StudentRecordsPage> {
  List<Student> records = [];

  bool sortAscending = true;
  int sortColumnIndex = 0;

  @override
  void initState() {
    super.initState();
    records = List.from(students);
  }

  void sortByName(bool ascending) {
    setState(() {
      sortAscending = ascending;
      sortColumnIndex = 1;

      records.sort(
        (a, b) =>
            ascending ? a.name.compareTo(b.name) : b.name.compareTo(a.name),
      );
    });
  }

  void sortByCgpa(bool ascending) {
    setState(() {
      sortAscending = ascending;
      sortColumnIndex = 3;

      records.sort(
        (a, b) =>
            ascending ? a.cgpa.compareTo(b.cgpa) : b.cgpa.compareTo(a.cgpa),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student Records")),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          sortAscending: sortAscending,
          sortColumnIndex: sortColumnIndex,
          columns: [
            const DataColumn(label: Text('Matric No')),
            DataColumn(
              label: const Text('Name'),
              onSort: (columnIndex, ascending) {
                sortByName(ascending);
              },
            ),
            const DataColumn(label: Text('Programme')),
            DataColumn(
              label: const Text('CGPA'),
              numeric: true,
              onSort: (columnIndex, ascending) {
                sortByCgpa(ascending);
              },
            ),
          ],
          rows: records.map((student) {
            return DataRow(
              cells: [
                DataCell(Text(student.matricNo)),
                DataCell(Text(student.name)),
                DataCell(Text(student.programme)),
                DataCell(Text(student.cgpa.toString())),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
