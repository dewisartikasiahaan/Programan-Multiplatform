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
        title: const Text('Coba Widget - Snackbar'),
      ),
      body: Center(
        child: Builder(
          builder: (BuildContext context) {
            return ElevatedButton(
              child: const Text('Tampilkan snackbar'),
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text('Pesan ditampilkan dengan cara pertama'),
                  action: SnackBarAction(
                    label: 'Tutup',
                    onPressed: () {
                      // Aksi ketika tombol snackbar diklik
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            );
          },
        ),
      ),
    );
  }
}