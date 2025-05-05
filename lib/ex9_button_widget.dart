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
    double _volume = 0.0;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text("Percobaan Menggunakan Widget"),
                actions: <Widget>[
                    IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                    ),
                    IconButton(
                        icon: const Icon(Icons.settings),
                        onPressed: () {},
                    )
                ],
            ),
            body: Center(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: <Widget>[
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                    'Elevated Button',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                    ),
                                ),
                            ),
                            const SizedBox(height: 5.0),
                            OutlinedButton(
                                onPressed: () {},
                                child: const Text(
                                    'Outline Button',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                    ),
                                ),
                            ),
                            const SizedBox(height: 5.0),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                    'Text Button',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                    ),
                                ),
                            ),
                            IconButton(
                                icon: const Icon(Icons.volume_up),
                                tooltip: 'Increase volume by 10',
                                onPressed: () {
                                    setState(() {
                                        _volume += 10;
                                    });
                                },
                            ),
                            Text('Volume : $_volume'),
                        ],
                    ),
                ),
            ),
            floatingActionButton: FloatingActionButton.extended(
                onPressed: () {},
                backgroundColor: Colors.blueAccent,
                tooltip: 'Like',
                label: const Text('Like'),
                icon: const Icon(Icons.thumb_up),
            ),
        );
    }
}