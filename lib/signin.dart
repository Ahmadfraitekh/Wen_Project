import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wyn/custom_app_bar.dart';
import 'package:wyn/header_widget.dart';
import 'package:wyn/profile_page.dart';
import 'package:wyn/registration_page.dart';
import 'package:wyn/service_page.dart';
import 'package:wyn/theme_helper.dart';
import 'main.dart';
import 'splash_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _headerHeight = 150;
  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: ClipPath(
            clipper: CustomAppBar(),
            child: Container(
              color: HexColor('#6613d7'),
            ),
          ),
          preferredSize: Size.fromHeight(_headerHeight)),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
                child: Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30.0,
                        ),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextField(
                                decoration: ThemeHelper().textInputDecoration(
                                    'User Name', 'Enter your user name'),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              TextField(
                                obscureText: true,
                                decoration: ThemeHelper().textInputDecoration(
                                  'Password',
                                  'Enter your password',
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                                alignment: Alignment.topRight,
                                child: Text(
                                  'Forgot your password?',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              Container(
                                decoration:
                                    ThemeHelper().buttonBoxDecoration(context),
                                child: ElevatedButton(
                                  style: ThemeHelper().buttonStyle(),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(40, 10, 40, 10),
                                    child: Text(
                                      'Sign In'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ServicePage()));
                                  },
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                                decoration:
                                    ThemeHelper().buttonBoxDecoration(context),
                                child: ElevatedButton(
                                  style: ThemeHelper().buttonStyle(),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(40, 10, 40, 10),
                                    child: Text(
                                      'Sign In as a guest'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ServicePage()));
                                  },
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                                // child: Text('Don\'t have account? Sign up', style: TextStyle(
                                //   fontSize: 18
                                // ),
                                // ),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "Don\'t have account?",
                                          style: TextStyle(fontSize: 18)),
                                      TextSpan(
                                        text: "Sign up",
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        RegistrationPage()));
                                          },
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: HexColor('#6613d7')),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
