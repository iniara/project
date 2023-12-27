import 'package:flutter/material.dart';

class dzikir_pagi extends StatefulWidget {
  @override
  _DzikirPagiState createState() => _DzikirPagiState();
}

class _DzikirPagiState extends State<dzikir_pagi> {
  int counter = 0; // Variabel untuk menyimpan angka dzikir
  final int limit = 3; // Batasan hitungan tasbih

  void incrementCounter() {
    if (counter < limit) {
      setState(() {
        counter++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dzikir Pagi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Judul', // Ganti dengan judul yang sesuai
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    incrementCounter(); // Memanggil fungsi untuk menambah angka dzikir
                  },
                  child:
                      Text('$counter'), // Menampilkan angka dzikir pada tombol
                ),
              ],
            ),
            SizedBox(height: 20), // Jarak antara judul dan teks dzikir
            // Teks dzikir dalam bahasa Arab
            Text(
              'اللَّهُمَّ إِنِّي أَصْبَحْتُ أُشْهِدُكَ وَأُشْهِدُ حَمَلَةَ عَرْشِكَ وَمَلَائِكَتِكَ وَجَمِيعَ خَلْقِكَ أَنَّكَ أَنْتَ اللَّهُ لَا إِلَهَ إِلَّا أَنْتَ وَحْدَكَ لَا شَرِيكَ لَكَ وَأَنَّ مُحَمَّدًا عَبْدُكَ وَرَسُولُكَ',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10), // Jarak antara teks dzikir dan artinya
            // Teks arti dzikir
            Text(
              'Arti dzikir dalam bahasa Indonesia',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
