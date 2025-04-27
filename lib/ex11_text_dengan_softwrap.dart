import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Software App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String longText =
      "Politeknik Negeri Bengkalis (POLBENG) adalah satu-satunya politeknik negeri yang berada di Riau.pada tangal 29 juli 2011,politeknik bengkalis resmi menjadi PTN dengan nama Politeknik Negeri Bengkalis melalui Peraturan Menteri Pendidikan Nasional (Permendiknas) No 28 tahun 2011 tentang pendirian,Organisasi dan Tata Kerja Politeknik Negeri Bengkalis.Hingga saat ini POLBENG sudah memiliki 8 jurusan yaitu teknik perkapalan.teknik mesin,teknik elektro,teknik sipil,administrasi niaga,teknik informatika,kemaritiman dan bahasa ";

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Metode Text.softWrap')),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(5.0),
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              'Politeknik Negeri Bengkalis',
              style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(height: 10.0),
          Container(
            margin: const EdgeInsets.all(5.0),
            padding: const EdgeInsets.all(10.0),
            child: Text(
              longText,
              style: const TextStyle(fontSize: 20.0),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
