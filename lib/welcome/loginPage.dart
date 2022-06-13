import 'package:a12/Dashboard/menu.dart';
import 'package:a12/navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:a12/main.dart';
import 'package:a12/welcome/signupPage.dart';
import 'package:a12/welcome/forPass.dart';
import 'package:a12/dashboard/menu.dart';
import 'package:a12/navbar/navbar.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
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
            controller: emailController,
            cursorColor: Color(0xFFf67280),
            textInputAction: TextInputAction.next,
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
            controller: passwordController,
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

  Widget buildForgotPassBtn(BuildContext context) {
    return GestureDetector(
        child: FlatButton(
            padding: EdgeInsets.only(left: 200),
            child: Text('Lupa Password?',
                style: TextStyle(
                  color: Colors.blue[700],
                  fontSize: 11,
                  fontFamily: 'Alata',
                  fontWeight: FontWeight.bold,
                )),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ForgotPage();
                  },
                ),
              );
            }));
  }

  Widget buildLoginbtnn(BuildContext context) {
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
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 2)),
              ],
            ),
            child: TextButton(
                child: Text('Login',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.amber[200],
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Alata')),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return iya();
                      },
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget buildSignUpBtn(BuildContext context) {
    return GestureDetector(
        child: TextButton(
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'Belum Punya Akun?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Alata',
                    )),
                TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(
                      color: Colors.blue[700],
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Alata',
                    ))
              ]),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpPage();
                  },
                ),
              );
            }));
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
                            fontFamily: 'Akaya Kanadaka')),
                    Text('Silahkan login untuk melanjutkan',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Alata')),
                    SizedBox(height: 20),
                    buildUsername(),
                    SizedBox(height: 15),
                    buildPassword(),
                    buildForgotPassBtn(context),
                    buildLoginbtnn(context),
                    // buildLoginBtn(context),
                    buildSignUpBtn(context)
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
      ),
    );
  }
}
