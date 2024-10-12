import 'package:flutter/material.dart';
import '../main.dart';

class LayarLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
              SizedBox(height: 20),
              TextField(decoration: InputDecoration(labelText: 'Email')),
              TextField(decoration: InputDecoration(labelText: 'Kata Sandi'), obscureText: true),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/welcome');
                },
                child: Text('Masuk'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text('Tidak Memiliki Akun? Daftar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
