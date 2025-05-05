import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Map untuk menyamakan nama label dan nama file gambarnya
  final Map<String, String> _images = {
    'facebook': 'facebook.png',
    'instagram': 'instagram.png',
    'youtube': 'youtube.png',
    'twitter': 'twitter.png',
    'whatsapp': 'whatsApp.png',
    'linkedin': 'linkedin.png',
    'google-plus': 'google-plus.png',
    'snapchat': 'snapchat.png',
    'skype': 'skype.png',
    'spotify': 'spotify.png',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Percobaan Menggunakan Widget'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        padding: const EdgeInsets.all(10.0),
        children: _images.entries.map((entry) {
          return GridTile(
            child: Container(
              margin: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/${entry.value}'),
                  fit: BoxFit.contain, // supaya gambar tidak ke-crop
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}