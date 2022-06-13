import 'package:a12/drink/listDrink.dart';
import 'package:a12/snack/listSnack.dart';
import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:a12/Dashboard/menu.dart';
import 'package:a12/navbar/navbar.dart';
import 'package:a12/Food/listFood.dart';

class listMenu extends StatelessWidget {
  Widget buildFood(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 60, 97, 58),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(children: <Widget>[
              Image.asset(
                'assets/ayam.png',
                width: 100,
                height: 100,
              ),
              TextButton(
                child: Text('Food',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontFamily: 'Alata',
                      fontWeight: FontWeight.bold,
                    )),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Food();
                  }));
                },
              )
            ])));
  }

  Widget buildDrink(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 60, 97, 58),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(children: <Widget>[
              Image.asset(
                'assets/matcha.png',
                width: 100,
                height: 100,
              ),
              TextButton(
                child: Text('Drink',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontFamily: 'Alata',
                      fontWeight: FontWeight.bold,
                    )),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Drink();
                  }));
                },
              )
            ])));
  }

  Widget buildSnack(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 60, 97, 58),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: <Widget>[
              Image.asset(
                'assets/gyoza.png',
                width: 100,
                height: 100,
              ),
              TextButton(
                child: Text('Snack',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontFamily: 'Alata',
                      fontWeight: FontWeight.bold,
                    )),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Snack();
                  }));
                },
              )
            ])));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: <Widget>[
      Padding(padding: EdgeInsets.all(10)),
      ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      buildFood(context),
      SizedBox(width: 10),
      buildDrink(context),
      SizedBox(width: 10),
      buildSnack(context),
      SizedBox(width: 10),
    ]));
  }
}
