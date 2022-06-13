import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:a12/Dashboard/menu.dart';

class keranjang extends StatelessWidget {
  const keranjang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Color(0xFFf67280),
      title: Text(
        "Keranjang Pesanan",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'Alata',
          fontWeight: FontWeight.bold,
        ),
      ),
    ));
  }
}
