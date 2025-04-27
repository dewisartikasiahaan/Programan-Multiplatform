import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Tambahkan konstruktor jika menggunakan const

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TI-RPL'),
        ),
        body: const Center(
          child: Text(
            'Competence for competition!',
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
