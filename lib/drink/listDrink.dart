import 'dart:ui';

import 'package:flutter/src/rendering/flex.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:a12/Dashboard/search.dart';
import 'package:a12/Dashboard/menu.dart';
import 'package:a12/Dashboard/listMenu.dart';

void main() {
  runApp(MaterialApp(
    home: listMenu(),
  ));
}

class Drink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFf67280),
        title: Text(
          "Drink",
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
          ListDrink(
            gambar: 'assets/matcha.png',
            judul: 'Ice Matcha Latte',
            konten:
                'Rice bowl khas Jepang dengan lauk daging sapi yang sudah di olah menggunakan bumbu khas JAPANE.SE, tambahan topping telur akan menambah kenikmatan makan kalian.',
            harga: '8.000',
          ),
          ListDrink(
              gambar: 'assets/taro.png',
              judul: 'Ice Taro Latte',
              konten:
                  'Merupakan rice bowl populer di Jepang karena mudah dibuat. Biasa disajikan untuk sarapan atau makan siang karena praktis. Nasi langsung diberi topping chicken katsu dan telur berbumbu bawang bombay.',
              harga: '8.000'),
          ListDrink(
              gambar: 'assets/coklat.png',
              judul: 'Ice Chocolate',
              konten:
                  'Salmon untuk sushi biasanya berasal dari laut, namun beda dengan sushi ini. Pembuatnya menggunakan ikan salmon yang dipanen dari bioreaktor! Sushi merupakan makanan khas Jepang yang identik dengan kepalan nasi dan potongan ikan segar.',
              harga: '10.000'),
          ListDrink(
              gambar: 'assets/redvelvet.png',
              judul: 'Ice Red Velvet Latte',
              konten:
                  'Crab stick merupakan makanan olahan dengan rasa mirip daging kepiting yang sering kali disajikan sebagai isian sushi atau menu hot pot. Crab stick bukan terbuat dari daging kepiting asli, melainkan dari surimi atau daging ikan cincang yang diproses menjadi pasta.',
              harga: '10.000'),
          ListDrink(
              gambar: 'assets/teh.png',
              judul: 'Ice Tea',
              konten:
                  'Udon otentik Jepang, penggunaan sup kaldu ikan sebagai kuahnya. Cita rasanya dimodifikasi lebih ringan agar sesuai selera masyarakat Indonesia.',
              harga: '4.000'),
          ListDrink(
              gambar: 'assets/jeruk.png',
              judul: 'Orange Juice',
              konten:
                  'Mie udon dengan perpaduan kuah miso jepang dan bumbu cabai khas korea dengan isi aneka hidangan laut serta topping rumput laut, daun bawang dan cabai potong.',
              harga: '5.000'),
        ],
      ),
    );
  }
}

class ListDrink extends StatelessWidget {
  ListDrink(
      {required this.gambar,
      required this.judul,
      required this.konten,
      required this.harga});

  final String gambar;
  final String judul;
  final String konten;
  final String harga;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Row(children: <Widget>[
            Image.asset(
              gambar,
              width: 70,
              fit: BoxFit.contain,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(children: <Widget>[
                Text(
                  judul,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Alata',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 200,
                      height: 90,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      child: Text(konten,
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Alata',
                          ),
                          textAlign: TextAlign.justify),
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Column(children: <Widget>[
                      Text(
                        harga,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Alata',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(Icons.shopping_cart)
                    ])
                  ],
                )
              ]),
            )
          ]),
        ));
  }
}
