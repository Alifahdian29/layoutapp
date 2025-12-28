import 'package:flutter/material.dart';
import 'praktikum1_2_row.dart';
import 'praktikum1_3_spacing.dart';
import 'praktikum1_4_container.dart';
import 'praktikum1_5_expanded.dart';
import 'praktikum1_6_mini_project.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PraktikumMenu(),
    );
  }
}

class PraktikumMenu extends StatelessWidget {
  const PraktikumMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Praktikum Layout')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          praktikumButton(context, 'Praktikum 1.2 - Row', Praktikum12Row()),
          praktikumButton(context, 'Praktikum 1.3 - Spacing', Praktikum13Spacing()),
          praktikumButton(context, 'Praktikum 1.4 - Container', Praktikum14Container()),
          praktikumButton(context, 'Praktikum 1.5 - Expanded', Praktikum15Expanded()),
          praktikumButton(context, 'Praktikum 1.6 - Mini Project', Praktikum16MiniProject()),
        ],
      ),
    );
  }

  Widget praktikumButton(BuildContext context, String title, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Text(title),
      ),
    );
  }
}
