import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pesan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFf67280),
        title: Text(
          "Pesan",
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
          chat(
            nama: 'Biramaya',
            keterangan: 'Gyoza nya masih ready?',
            waktu: '12.30',
          ),
          chat(nama: 'Dinul', keterangan: 'Terimakasih kaa', waktu: '10.45'),
          chat(nama: 'Leli', keterangan: 'Owkayyy', waktu: 'kemarin'),
        ],
      ),
    );
  }
}

class chat extends StatelessWidget {
  chat({required this.nama, required this.keterangan, required this.waktu});

  final String nama;
  final String keterangan;
  final String waktu;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(children: [
      Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.centerLeft,
        child: Row(children: <Widget>[
          Icon(
            Icons.person_outline,
            size: 30,
          ),
        ]),
      ),
      Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.centerLeft,
        width: 200,
        child: Column(
          children: <Widget>[
            Text(
              nama,
              style: TextStyle(
                fontSize: 18,
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
      )
    ]));
  }
}
