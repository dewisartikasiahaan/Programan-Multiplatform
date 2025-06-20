import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextAlign App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String tekst =
      "Nilai TextAlign.start pada teks dengan TextDirection.ltr";
  final String tekst2 =
      "Nilai TextAlign.end pada teks dengan TextDirection.ltr";
  final String tekst3 =
      "Nilai TextAlign.start pada teks dengan TextDirection.rtl";
  final String tekst4 =
      "Nilai TextAlign.end pada teks dengan TextDirection.rtl";

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Metode Text.textAlign')),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Text(
              tekst,
              style: const TextStyle(fontSize: 18.0),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Text(
              tekst2,
              style: const TextStyle(fontSize: 18.0),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.end,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Text(
              tekst3,
              style: const TextStyle(fontSize: 18.0),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5.0),
            child: Text(
              tekst4,
              style: const TextStyle(fontSize: 18.0),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
