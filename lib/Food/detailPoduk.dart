import 'dart:ui';

import 'package:flutter/src/rendering/flex.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:a12/Dashboard/search.dart';
import 'package:a12/Dashboard/menu.dart';

void main() {
  runApp(MaterialApp(
    home: iya(),
  ));
}

class Food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFf67280),
          title: Text(
            "Food",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Alata',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
            // alignment: Alignment,
            ));
  }
}
