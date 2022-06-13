import 'package:a12/welcome/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForgotPage extends StatelessWidget {
  const ForgotPage({Key? key}) : super(key: key);

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Password Baru',
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
                hintText: 'Password Baru',
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontFamily: 'Alata',
                )),
          ),
        )
      ],
    );
  }

  Widget buildKonPass() {
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
          child: Text("Simpan",
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
                        width: 130.0,
                        height: 130.0,
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
                              fontFamily: 'AkayaKanadaka')),
                      Text('Buat password baru disini',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontFamily: 'Alata')),
                      SizedBox(height: 20),
                      buildPassword(),
                      SizedBox(height: 15),
                      buildKonPass(),
                      SizedBox(height: 15),
                      buildSignBtn(context),
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
