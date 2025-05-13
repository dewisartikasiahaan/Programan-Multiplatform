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
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MainPage(),
        '/product': (BuildContext context) => ProductPage(),
        '/profile': (BuildContext context) => ProfilePage(),
      },
    );
  }
}

// Tab Navigation Implementation
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Step 1: Create TabController
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Navigation'),
        elevation: 7.0,
        // Step 2: Create TabBar
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Home'),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Product'),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Profile'),
            ),
          ],
        ),
      ),
      // Step 3: Create TabBarView
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Home(),
          Product(),
          Profile(),
        ],
      ),
      drawer: buildDrawer(context), // Combined with Drawer navigation
    );
  }
}

// Drawer Navigation Implementation
Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        ListTile(
          title: Text('Home'),
          leading: Icon(Icons.home),
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        Divider(),
        ListTile(
          title: Text('Product'),
          leading: Icon(Icons.add_shopping_cart),
          onTap: () {
            Navigator.pushNamed(context, '/product');
          },
        ),
        Divider(),
        ListTile(
          title: Text('Profile'),
          leading: Icon(Icons.person),
          onTap: () {
            Navigator.pushNamed(context, '/profile');
          },
        ),
      ],
    ),
  );
}

// Pages for TabBarView (don't need Scaffold)
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
      child: Text('Halaman Product'),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Halaman Profile'),
    );
  }
}

// Full pages for Drawer navigation
class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(context),
      appBar: AppBar(
        title: Text('Product Page'),
      ),
      body: Center(
        child: Text('Halaman Product Lengkap'),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(context),
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Text('Halaman Profile Lengkap'),
      ),
    );
  }
}