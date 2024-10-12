import 'package:flutter/material.dart';
import '../main.dart';

class LayarSelamatDatang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/profile');
    });

    return Scaffold(
      body: Center(
        child: Text(
          'Selamat Datang, $namaPengguna',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
