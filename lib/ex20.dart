import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialog Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(title: 'Percobaan Menggunakan Widget'),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void buildAlertDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      title: const Text("Informasi"),
      content: const Text("Flutter sangat luar biasa"),
      actions: <Widget>[
        ElevatedButton(
          child: const Text(
            'Ok',
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Percobaan Menggunakan Widget"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Show Dialog"),
          onPressed: () {
            buildAlertDialog(context);
          },
        ),
      ),
    );
  }
}