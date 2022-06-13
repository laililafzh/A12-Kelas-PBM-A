import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:a12/Dashboard/menu.dart';
import 'package:a12/Dashboard/best.dart';

class listBest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 28.0, vertical: 12.0),
            child: Row(
              children: <Widget>[
                bestSeller(
                  imageUrl: 'assets/gyz.png',
                  title: 'Gyoza',
                  price: '10.000',
                ),
                SizedBox(width: 24),
                bestSeller(
                  imageUrl: 'assets/nikudon.png',
                  title: 'Niku Odon',
                  price: '12.000',
                ),
                SizedBox(width: 24),
                bestSeller(
                  imageUrl: 'assets/teriyaki.png',
                  title: 'Beef Teriyaki',
                  price: '20.000',
                ),
                SizedBox(width: 24),
                bestSeller(
                  imageUrl: 'assets/taro.png',
                  title: 'Ice Taro Latte',
                  price: '8.000',
                ),
              ],
            )));
  }
}
