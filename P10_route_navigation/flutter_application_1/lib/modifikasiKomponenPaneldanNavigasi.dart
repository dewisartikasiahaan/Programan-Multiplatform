import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter Rute dan Navigasi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget - Snackbar'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Tampilkan snackbar'),
          onPressed: () {
            // Menggunakan ScaffoldMessenger dari context
            final snackBar = SnackBar(
              content: const Text('Pesan ditampilkan dengan cara kedua'),
              action: SnackBarAction(
                label: 'Tutup',
                onPressed: () {
                  // Action ketika snackbar ditutup
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        ),
      ),
    );
  }
}