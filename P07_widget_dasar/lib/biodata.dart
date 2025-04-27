import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Mahasiswa',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DataMahasiswa(),
    );
  }
}

class DataMahasiswa extends StatelessWidget {
  const DataMahasiswa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Mahasiswa'),
        backgroundColor: Colors.blue, // Ganti jadi biru
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
            headingRowColor: MaterialStateProperty.all(Colors.blue[100]),
            columns: const [
              DataColumn(
                label: Center(
                  child: Text(
                    'No',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                numeric: false,
              ),
              DataColumn(
                label: Center(
                  child: Text(
                    'NIM',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                numeric: false,
              ),
              DataColumn(
                label: Center(
                  child: Text(
                    'NAMA',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                numeric: false,
              ),
            ],
            rows: const [
              DataRow(
                cells: [
                  DataCell(Center(child: Text('1'))),
                  DataCell(Center(child: Text('6304221471'))),
                  DataCell(Center(child: Text('Dewi Sartika Siahaan'))),
                ],
           
              ),
            ],
          ),
        ),
      ),
    );
  }
}
