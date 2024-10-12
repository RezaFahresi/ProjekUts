import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../main.dart';

class LayarProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
            SizedBox(height: 20),
            Text('Nama: $namaPengguna'),
            Text('Email: fahrezireza@gmail.com'),
            Text('Alamat: glenmore'),
            Text('No Telp: 08123456789'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                } else if (Platform.isIOS) {
                  exit(0);
                }
              },
              child: Text('Keluar'),
            ),
          ],
        ),
      ),
    );
  }
}
