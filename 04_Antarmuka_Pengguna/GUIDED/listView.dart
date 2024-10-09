import 'package:flutter/material.dart';

class listViewScreen extends StatelessWidget {
  const listViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Praktikum 4'),
        backgroundColor: const Color.fromARGB(255, 2, 23, 83),
      ),
      body: ListView(
        children: [
          Container(
            height: 100,
            width: 100,
            color: const Color.fromARGB(255, 228, 89, 89),
            child: Center(child: Text('Type A')),
          ),
          Container(
            height: 100,
            width: 100,
            color: const Color.fromARGB(255, 31, 97, 151),
            child: Center(child: Text('Type A')),
          ),
          Container(
            height: 100,
            width: 100,
            color: const Color.fromARGB(255, 197, 183, 64),
            child: Center(child: Text('Type A')),
          ),
          Container(
            height: 100,
            width: 100,
            color: const Color.fromARGB(255, 46, 125, 49),
            child: Center(child: Text('Type A')),
          ),
        ],
      ),
    );
  }
}
