import 'package:flutter/material.dart';
import 'package:project_dzikir/dzikir_pagi.dart';
import 'package:project_dzikir/dzikir_petang.dart';
import 'package:project_dzikir/splash_screen.dart';
import 'package:project_dzikir/tasbih_digital.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/dzikir_pagi': (context) => dzikir_pagi(), // Rute untuk dzikir_pagi
        '/dzikir_petang': (context) =>
            dzikir_petang(), // Rute untuk dzikir_petang
        '/tasbih_digital': (context) =>
            tasbih_digital(), // Rute untuk tasbih_digital
        // ... tambahkan rute lainnya jika diperlukan
      },
      home: SplashScreen(),
    );
  }
}
