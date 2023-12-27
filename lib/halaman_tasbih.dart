import 'package:flutter/material.dart';

class DetailDzikir extends StatelessWidget {
  final String selectedDzikir;

  DetailDzikir(this.selectedDzikir);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Dzikir'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dzikir yang dipilih:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              selectedDzikir,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lakukan aksi yang diperlukan jika ingin menyimpan dzikir
                Navigator.pop(context); // Kembali ke halaman sebelumnya
              },
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
