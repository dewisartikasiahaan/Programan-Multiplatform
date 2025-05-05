import 'package:flutter/material.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),
            home: const Home(title: 'Flutter Demo Home Page'),
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
    List<Widget> createItems(int count) {
        List<Widget> items = <Widget>[];
        for (var i = 0; i < count; i++) {
            items.add(ListTile(
                title: Text("Item ${i + 1}"),
                leading: const Icon(Icons.star),
                trailing: const Icon(Icons.delete),
            ));
            items.add(
                const Divider(color: Colors.black26),
            );
        }
        return items;
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text("Percobaan Menggunakan Widget")),
            body: ListView(
                padding: const EdgeInsets.all(10.0),
                children: createItems(20),
            ),
        );
    }
}