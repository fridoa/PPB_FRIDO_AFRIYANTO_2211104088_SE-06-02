import 'package:flutter/material.dart';
import 'home_page.dart';
import 'second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Menentukan home screen aplikasi
      home: HomePage(),
      // Mendefinisikan rute aplikasi
      routes: {
        '/second': (context) => SecondPage(),
      },
    );
  }
}
