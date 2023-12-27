import 'package:flutter/material.dart';

class dzikir_petang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dzikir Petang'),
      ),
      drawer: Drawer(
        child: Container(
          color: const Color.fromRGBO(124, 92, 60, 1),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Image.asset(
                  'assets/images/Dzikrullah putih.png',
                  width: 300,
                  height: 80,
                  fit: BoxFit.contain,
                ),
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/icon_pagi.png', // Ganti dengan path gambar ikon Anda
                  width: 30, // Atur lebar gambar ikon
                  height: 30, // Atur tinggi gambar ikon
                ),
                title: Text(
                  'Dzikir Pagi',
                  style: TextStyle(
                      color: Colors.white), // Mengubah warna teks menjadi putih
                ),
                // Teks di sebelah ikon
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, '/dzikir_pagi');
                },
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/icon_petang.png', // Ganti dengan path gambar ikon Anda
                  width: 30, // Atur lebar gambar ikon
                  height: 30, // Atur tinggi gambar ikon
                ),
                title: Text(
                  'Dzikir Petang',
                  style: TextStyle(
                      color: Colors.white), // Mengubah warna teks menjadi putih
                ),
                // Teks di sebelah ikon
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, '/dzikir_petang');
                },
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/icon_tasbih.png', // Ganti dengan path gambar ikon Anda
                  width: 30, // Atur lebar gambar ikon
                  height: 30, // Atur tinggi gambar ikon
                ),
                title: Text(
                  'Tasbih Digital',
                  style: TextStyle(
                      color: Colors.white), // Mengubah warna teks menjadi putih
                ),
                // Teks di sebelah ikon
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, '/tasbih_digital');
                },
              ),
              // Menu lainnya...
            ],
          ),
        ),
      ),
      body: Center(
        child: Text('Dzikir Petang Page'),
      ),
    );
  }
}
