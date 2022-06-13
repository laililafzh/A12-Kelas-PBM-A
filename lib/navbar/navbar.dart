import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bmnav/bmnav.dart' as bmnav;
import 'package:a12/Dashboard/menu.dart';
import 'package:a12/navbar/transaksi.dart';
import 'package:a12/navbar/pesan.dart';
import 'package:a12/navbar/riwayat.dart';
import 'package:a12/navbar/profile.dart';

class navbar extends StatefulWidget {
  @override
  _navBarState createState() => _navBarState();
}

class _navBarState extends State<navbar> {
  late int _currentIndex;
  var page;

  @override
  void initState() {
    _currentIndex = 0;
    page = navbar();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page,
      bottomNavigationBar: bmnav.BottomNav(
        color: Color(0xFFf67280),
        labelStyle: bmnav.LabelStyle(
          visible: true,
          showOnSelect: false,
          onSelectTextStyle: TextStyle(
            color: Colors.white,
            height: 1.8,
            fontSize: 12,
          ),
          textStyle: TextStyle(
            color: Colors.white,
            height: 1.8,
          ),
        ),
        iconStyle: bmnav.IconStyle(
          color: Colors.white,
          onSelectSize: 22.0,
          size: 22.0,
        ),
        elevation: 6.0,
        onTap: (i) {
          _currentIndex = i;
          _currentPage(i);
        },
        index: _currentIndex,
        items: [
          bmnav.BottomNavItem(
            Icons.home,
            label: 'Home',
          ),
          bmnav.BottomNavItem(
            Icons.assignment,
            label: 'Riwayat',
          ),
          bmnav.BottomNavItem(
            Icons.account_balance_wallet,
            label: 'Transaksi',
          ),
          bmnav.BottomNavItem(
            Icons.wechat_outlined,
            label: 'Pesan',
          ),
          bmnav.BottomNavItem(
            Icons.person,
            label: 'Akun',
          ),
        ],
      ),
    );
  }

  void _currentPage(int i) {
    if (i == 0) {
      setState(() {
        page = navbar();
      });
    } else if (i == 1) {
      setState(() {
        page = Riwayat();
      });
    } else if (i == 2) {
      setState(() {
        page = Transaksi();
      });
    } else if (i == 3) {
      setState(() {
        page = Pesan();
      });
    } else {
      setState(() {
        page = ProfilePage();
      });
    }
  }
}
