import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deskripsi Hari',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DeskripsiHari(),
    );
  }
}

class DeskripsiHari extends StatefulWidget {
  const DeskripsiHari({Key? key}) : super(key: key);

  @override
  _DeskripsiHariState createState() => _DeskripsiHariState();
}

class _DeskripsiHariState extends State<DeskripsiHari> {
  String deskripsi = 'Pilih hari untuk melihat deskripsi';
  String selectedHari = '';

  void updateDeskripsi(String hari) {
    setState(() {
      selectedHari = hari;
      switch (hari) {
        case 'Senin':
          deskripsi = 'Hari yang luar biasa untuk memulai pekerjaanmu.';
          break;
        case 'Selasa':
          deskripsi = 'Tetap semangat mengerjakan tugas.';
          break;
        case 'Rabu':
          deskripsi =
              'Selalu bahagia dan bersyukur dengan apa yang telah diperoleh.';
          break;
        case 'Kamis':
          deskripsi = 'Kerja keras untuk menggapai cita-cita.';
          break;
        case 'Jumat':
          deskripsi = 'Jangan lupa untuk beribadah.';
          break;
        case 'Sabtu':
          deskripsi = 'Selamat weekend.';
          break;
        case 'Minggu':
          deskripsi = 'Manfaatkan hari minggumu untuk istirahat.';
          break;
      }
    });
  }

  ButtonStyle getButtonStyle(String hari) {
    return ElevatedButton.styleFrom(
      backgroundColor:
          selectedHari == hari
              ? Colors.blue.withOpacity(0.5) // warna transparan
              : Colors.blue, // default
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deskripsi Hari'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                for (var hari in [
                  'Senin',
                  'Selasa',
                  'Rabu',
                  'Kamis',
                  'Jumat',
                  'Sabtu',
                  'Minggu',
                ])
                  ElevatedButton(
                    onPressed: () => updateDeskripsi(hari),
                    child: Text(hari),
                    style: getButtonStyle(hari),
                  ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                deskripsi,
                style: const TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
