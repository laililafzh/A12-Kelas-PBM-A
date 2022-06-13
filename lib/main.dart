import 'package:a12/welcome/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get mainColorSwatch => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kelompok A12',
      theme: ThemeData(
          primarySwatch: mainColorSwatch,
          appBarTheme: AppBarTheme(backgroundColor: Color(0xFFf67280))),
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/welcome_bg.png'), fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/gyoza.png',
                    width: 200.0,
                    height: 200.0,
                  ),
                  Text('JAPANE.SE',
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.amber,
                          fontFamily: 'Akaya Kanadaka')),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(
                  child: const Text('Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Alata',
                        fontWeight: FontWeight.bold,
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage();
                        },
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
