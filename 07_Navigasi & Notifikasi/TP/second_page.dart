import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Kembali ke halaman sebelumnya (Home Page)
            Navigator.pop(context);
          },
          child: Text('Back to Home Page'),
        ),
      ),
    );
  }
}