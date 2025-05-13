import 'package:flutter/material.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Demo Flutter Rute dan Navigasi',
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),
            home: MainPage(),
        );
    }
}

class MainPage extends StatefulWidget {
    @override
    _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
    // Step 1: membuat object halaman home, product dan profil
    final _pages = [
        Home(),
        Product(),
        Profil(),
    ];

    // Step 2: mendeklarasikan variabel _selectedIndex
    int _selectedIndex = 0;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Coba Bottom Navigation'),
            ),
            // Step 3: mengisi properti bottomNavigationBar
            bottomNavigationBar: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'Home',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.add_shopping_cart),
                        label: 'Product',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: 'Profil',
                    ),
                ],
                currentIndex: _selectedIndex,
                type: BottomNavigationBarType.fixed,
                fixedColor: Colors.blue,
                onTap: (index) {
                    setState(() {
                        _selectedIndex = index;
                    });
                },
            ),
            // Step 4: mendefinisikan body berdasarkan objek halaman yang sudah di deklarasikan di atas
            body: _pages.elementAt(_selectedIndex),
        );
    }
}

// Halaman yang dipanggil pada TabBarView tidak memerlukan scaffold lagi
class Home extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Center(
            child: Text('Halaman Home'),
        );
    }
}

class Product extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Center(
            child: Text('Halaman product'),
        );
    }
}

class Profil extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Center(
            child: Text('Halaman profile'),
        );
    }
}