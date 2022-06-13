import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Riwayat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFf67280),
        title: Text(
          'Riwayat Pesanan',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Alata',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          history(
            tanggal: 'Selasa, 1 Februari 2022',
            keterangan: '2 pesanan',
            harga: '30.000',
          ),
          history(
              tanggal: 'Selasa, 5 Februari 2022',
              keterangan: '3 pesanan',
              harga: '50.000'),
        ],
      ),
    );
  }
}

class history extends StatelessWidget {
  history(
      {required this.tanggal, required this.keterangan, required this.harga});

  final String tanggal;
  final String keterangan;
  final String harga;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(children: [
      Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.centerLeft,
        width: 315,
        child: Column(
          children: <Widget>[
            Text(
              tanggal,
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Alata',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              keterangan,
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Alata',
              ),
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(10),
        child: Row(children: [
          Text(
            harga,
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'Alata',
            ),
          ),
          Icon(
            Icons.navigate_next,
            size: 30,
          )
        ]),
      )
    ]));
  }
}
