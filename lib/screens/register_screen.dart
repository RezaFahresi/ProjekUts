import 'package:flutter/material.dart';
import '../main.dart';

class LayarDaftar extends StatefulWidget {
  @override
  _LayarDaftarState createState() => _LayarDaftarState();
}

class _LayarDaftarState extends State<LayarDaftar> {
  final TextEditingController namaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius: 40, child: Icon(Icons.person_add, size: 40)),
              SizedBox(height: 20),
              TextField(
                controller: namaController,
                decoration: InputDecoration(labelText: 'Nama Lengkap'),
              ),
              TextField(decoration: InputDecoration(labelText: 'Email')),
              TextField(decoration: InputDecoration(labelText: 'Kata Sandi'), obscureText: true),
              TextField(decoration: InputDecoration(labelText: 'Konfirmasi Kata Sandi'), obscureText: true),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    namaPengguna = namaController.text;
                  });
                  Navigator.pushNamed(context, '/success');
                },
                child: Text('Daftar'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Sudah Memiliki Akun? Masuk'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
