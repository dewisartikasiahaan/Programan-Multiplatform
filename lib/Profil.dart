import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Diri',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const BiodataDiri(),
    );
  }
}

class BiodataDiri extends StatelessWidget {
  const BiodataDiri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFC0CB), // soft pink
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Biodata Diri',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: const Color(0xFFFFE4E1), // misty rose
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color.fromARGB(
                      255,
                      219,
                      108,
                      147,
                    ), // soft border pink
                    width: 3,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFF8BBD0).withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 3,
                    ),
                  ],
                  image: const DecorationImage(
                    image: AssetImage('images/image.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'DEWI SARTIKA SIAHAAN',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD81B60),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    _buildInfoButton(
                      Icons.cake,
                      'Tempat, Tanggal Lahir',
                      'Pem.Bandar, 08 Agustus 2004',
                    ),
                    const SizedBox(height: 15),
                    _buildInfoButton(
                      Icons.email,
                      'Email',
                      'dewisartikasiahaan515@email.com',
                    ),
                    const SizedBox(height: 15),
                    _buildInfoButton(Icons.phone, 'Nomor HP', '0823-7506-2833'),
                    const SizedBox(height: 15),
                    _buildInfoButton(Icons.favorite, 'Hobby', 'Bernyanyi'),
                  ],
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoButton(IconData icon, String title, String value) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFFD81B60),
        padding: const EdgeInsets.all(16),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Color(0xFFF8BBD0), width: 1),
        ),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color.fromARGB(255, 197, 83, 123), size: 28),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 197, 52, 105),
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: Color(0xFFF8BBD0)),
        ],
      ),
    );
  }
}
