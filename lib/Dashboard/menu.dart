import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/flex.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:a12/welcome/loginPage.dart';
import 'package:a12/Dashboard/search.dart';
import 'package:a12/Dashboard/best.dart';
import 'package:a12/Dashboard/search.dart';
import 'package:a12/Dashboard/listMenu.dart';
import 'package:a12/Dashboard/listBest.dart';
import 'package:a12/keranjang/keranjang.dart';
import 'package:a12/navbar/navbar.dart';

class iya extends StatelessWidget {
  get onChanged => null;

  get child => null;

  Widget buildCart(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(6),
        child: ElevatedButton(
          child: Icon(
            Icons.shopping_cart_rounded,
            size: 40,
            color: Color(0xFFf67280),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return keranjang();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(70, 60),
              shape: const CircleBorder(),
              primary: Colors.white,
              shadowColor: Colors.black),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        search(onChanged: onChanged),
        SizedBox(height: 15),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 18, left: 20),
              child: Row(
                children: <Widget>[
                  Text(
                    'Menu JAPANE.SE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Alata',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        listMenu(),
        SizedBox(height: 16),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Text(
                    'Best Seller',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Alata',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        listBest(),
        buildCart(context)
      ],
    )));
  }
}
