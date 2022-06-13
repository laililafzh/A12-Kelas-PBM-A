import 'package:a12/Dashboard/listBest.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:a12/Dashboard/menu.dart';
import 'package:a12/navbar/navbar.dart';

class bestSeller extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;

  const bestSeller({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFf67280),
                  blurRadius: 7,
                  spreadRadius: 1,
                ),
              ]),
          width: 138,
          height: 220,
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(2)),
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.asset(
                  imageUrl,
                  height: 100,
                  width: 100,
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Alata',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    price,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Alata',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 60, 97, 58),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(6),
                child: new Icon(
                  Icons.shopping_cart,
                  size: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ));
  }
}
