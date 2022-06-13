import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:a12/welcome/loginPage.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Email',
            style: TextStyle(
                fontSize: 13,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontFamily: 'Alata')),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.amber[200],
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 10, offset: Offset(0, 2)),
            ],
          ),
          width: 300,
          height: 50,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                fontSize: 13, color: Colors.black87, fontFamily: 'Alata'),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon:
                    Icon(Icons.account_circle, size: 30, color: Colors.black87),
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontFamily: 'Alata',
                )),
          ),
        )
      ],
    );
  }

  Widget buildUsername() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Username',
            style: TextStyle(
                fontSize: 13,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontFamily: 'Alata')),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.amber[200],
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 10, offset: Offset(0, 2)),
            ],
          ),
          width: 300,
          height: 50,
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
                fontSize: 13, color: Colors.black87, fontFamily: 'Alata'),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon:
                    Icon(Icons.account_circle, size: 30, color: Colors.black87),
                hintText: 'Username',
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontFamily: 'Alata',
                )),
          ),
        )
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Password',
            style: TextStyle(
                fontSize: 13,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontFamily: 'Alata')),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.amber[200],
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 10, offset: Offset(0, 2)),
            ],
          ),
          width: 300,
          height: 50,
          child: TextField(
            obscureText: true,
            style: TextStyle(
                fontSize: 13, color: Colors.black87, fontFamily: 'Alata'),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(Icons.lock, size: 30, color: Colors.black87),
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontFamily: 'Alata',
                )),
          ),
        )
      ],
    );
  }

  Widget buildConPass() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Konfirmasi Password',
            style: TextStyle(
                fontSize: 13,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontFamily: 'Alata')),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.amber[200],
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 10, offset: Offset(0, 2)),
            ],
          ),
          width: 300,
          height: 50,
          child: TextField(
            obscureText: true,
            style: TextStyle(
                fontSize: 13, color: Colors.black87, fontFamily: 'Alata'),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(Icons.lock, size: 30, color: Colors.black87),
                hintText: 'Konfirmasi Password',
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontFamily: 'Alata',
                )),
          ),
        )
      ],
    );
  }

  Widget buildSignBtn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: const EdgeInsets.only(bottom: 15)),
        SizedBox(height: 5),
        TextButton(
          child: Text("Sign Up",
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Alata')),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LoginPage();
            }));
          },
          style: TextButton.styleFrom(
            elevation: 10,
            backgroundColor: Colors.amber[200],
          ),
        ),
      ],
    );
  }

  Widget buildSignupBtn(BuildContext context) {
    return GestureDetector(
        child: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          width: 300,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 10, offset: Offset(0, 2)),
            ],
          ),
          child: TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginPage();
              }));
            },
            child: Text('Sign up',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.amber[200],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Alata')),
          ),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/welcome_bg.png'),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(50, 20, 50, 10),
                      ),
                      Image.asset(
                        'assets/gyoza.png',
                        width: 100.0,
                        height: 100.0,
                      ),
                      Text('Selamat Datang di',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'Alata')),
                      Text('JAPANE.SE',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.amber,
                              fontFamily: 'Akaya Kanadaka')),
                      Text(
                          'Buat akun baru dan dapatkan keuntungan sebagai member',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontFamily: 'Alata')),
                      SizedBox(height: 20),
                      buildEmail(),
                      SizedBox(height: 20),
                      buildUsername(),
                      SizedBox(height: 15),
                      buildPassword(),
                      SizedBox(height: 20),
                      buildConPass(),
                      SizedBox(height: 20),
                      buildSignupBtn(context),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: FlatButton(
                    child: Text(
                      'Back',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Alata',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
