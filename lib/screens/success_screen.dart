import 'package:flutter/material.dart';

class LayarPendaftaranBerhasil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.popUntil(context, ModalRoute.withName('/'));
    });

    return Scaffold(
      body: Center(
        child: Text(
          'Pendaftaran Berhasil Dilakukan',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
