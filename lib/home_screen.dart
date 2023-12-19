import 'package:flutter/material.dart';
import 'package:project_dzikir/dzikir_pagi.dart';
import 'package:project_dzikir/dzikir_petang.dart';
import 'package:project_dzikir/tasbih_digital.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/Dzikrullah 3.png',
                  width: 300,
                  height: 80,
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
            SizedBox(
              width: 200,
              child: TextButton(
                onPressed: () {
                  // Aksi yang ingin dilakukan saat tombol 'Dzikir Pagi' ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            dzikir_pagi()), // Ganti dengan halaman yang diinginkan
                  );
                },
                child: Text("Dzikir Pagi", style: TextStyle(fontSize: 18)),
                style: ButtonStyle(
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(30, 24, 18, 1)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Color.fromRGBO(30, 24, 18, 1))),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: TextButton(
                onPressed: () {
                  // Aksi yang ingin dilakukan saat tombol 'Dzikir Petang' ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            dzikir_petang()), // Ganti dengan halaman yang diinginkan
                  );
                },
                child: Text("Dzikir Petang", style: TextStyle(fontSize: 18)),
                style: ButtonStyle(
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(30, 24, 18, 1)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Color.fromRGBO(30, 24, 18, 1))),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: TextButton(
                onPressed: () {
                  // Aksi yang ingin dilakukan saat tombol 'Tasbih Digital' ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            tasbih_digital()), // Ganti dengan halaman yang diinginkan
                  );
                },
                child: Text("Tasbih Digital", style: TextStyle(fontSize: 18)),
                style: ButtonStyle(
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(30, 24, 18, 1)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Color.fromRGBO(30, 24, 18, 1))),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Contoh halaman yang dapat Anda navigasikan




