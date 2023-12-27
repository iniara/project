import 'package:flutter/material.dart';
import 'package:project_dzikir/halaman_tasbih.dart';

class tasbih_digital extends StatefulWidget {
  @override
  _TasbihDigitalState createState() => _TasbihDigitalState();
}

class _TasbihDigitalState extends State<tasbih_digital> {
  int count = 0;
  List<String> dzikirList = []; // Menambahkan deklarasi dzikirList

  void counter() {
    setState(() {
      count++;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  Future<void> _showInputDialog(BuildContext context) async {
    String dzikirText = '';

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Masukkan Kalimat Dzikir'),
          content: TextField(
            onChanged: (value) {
              dzikirText = value;
            },
            decoration: InputDecoration(
              hintText: 'Masukkan kalimat dzikir...',
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                if (dzikirText.isNotEmpty) {
                  addToDzikirList(dzikirText);
                }
              },
              child: Text('Tambah'),
            ),
          ],
        );
      },
    );
  }

  // Di dalam _TasbihDigitalState
  void addToDzikirList(String dzikirText) {
    setState(() {
      dzikirList.add(dzikirText);
    });
  }

  void _navigateToHalamanDzikirBaru() async {
    final selectedDzikir = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HalamanDzikirBaru(
          dzikirList: dzikirList,
          onSelected: (String) {},
        ),
      ),
    );

    if (selectedDzikir != null) {
      setState(() {
        dzikirList = [selectedDzikir];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasbih Digital'),
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
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(159, 112, 79, 1),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 5),
                        color: Color.fromRGBO(159, 112, 79, 1).withOpacity(.5),
                        spreadRadius: 5,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Text(
                        count.toString(),
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                            ),
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -40),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(159, 112, 79, 1),
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 5),
                          color:
                              Color.fromRGBO(159, 112, 79, 1).withOpacity(.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: counter,
                          style: ElevatedButton.styleFrom(
                            maximumSize: const Size(80, 80),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(159, 112, 79, 1),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: reset,
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Color.fromRGBO(30, 24, 18, 1),
                          ),
                          child: const Text('Reset'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 16.0,
            left: 16.0,
            right: 16.0,
            child: GestureDetector(
              onTap: () {
                _navigateToHalamanDzikirBaru();
              },
              child: Container(
                height: 50.0,
                width: 100.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    dzikirList.isNotEmpty
                        ? dzikirList.first
                        : 'Tidak ada dzikir',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: () {
                _showInputDialog(context);
              },
              child: Icon(Icons.add),
              foregroundColor: Colors.white,
              backgroundColor: Color.fromRGBO(159, 112, 79, 1),
              shape: CircleBorder(),
            ),
          ),
        ],
      ),
    );
  }
}

class HalamanDzikirBaru extends StatefulWidget {
  final List<String> dzikirList;
  final Function(String) onSelected;

  HalamanDzikirBaru({required this.dzikirList, required this.onSelected});

  @override
  _HalamanDzikirBaruState createState() => _HalamanDzikirBaruState();
}

class _HalamanDzikirBaruState extends State<HalamanDzikirBaru> {
  TextEditingController editingController = TextEditingController();
  late String editedDzikir;

  void deleteDzikir(int index) {
    setState(() {
      widget.dzikirList.removeAt(index);
    });
  }

  void saveChanges(int index) {
    setState(() {
      widget.dzikirList[index] = editedDzikir;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dzikir Baru'),
      ),
      body: ListView.builder(
        itemCount: widget.dzikirList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              widget.onSelected(widget.dzikirList[index]);
              Navigator.pop(context, widget.dzikirList[index]);
            },
            child: ListTile(
              title: Text(widget.dzikirList[index]),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      editingController.text = widget.dzikirList[index];
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Edit Dzikir'),
                            content: TextField(
                              controller: editingController,
                              onChanged: (value) {
                                setState(() {
                                  editedDzikir = value;
                                });
                              },
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () => saveChanges(index),
                                child: Text('Simpan'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => deleteDzikir(index),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
