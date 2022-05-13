import 'package:firebase_auth/firebase_auth.dart';
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
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? email, password;
  FirebaseAuth auth = FirebaseAuth.instance;

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
                              Container(
                                child: TextFormField(
                                  decoration: ThemeHelper()
                                      .textInputDecoration("Enter your email"),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (val) {
                                    if (!(val!.isEmpty) &&
                                        !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                                            .hasMatch(val)) {
                                      return "Enter a valid email address";
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    email = value;
                                  },
                                ),
                                decoration:
                                    ThemeHelper().inputBoxDecorationShaddow(),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Container(
                                child: TextFormField(
                                  decoration: ThemeHelper().textInputDecoration(
                                      "Enter your password"),
                                  keyboardType: TextInputType.visiblePassword,
                                  validator: (val) {
                                    if (!(val!.isEmpty)) {
                                      return null;
                                    }
                                    return "Enter a valid password";
                                  },
                                  onChanged: (value) {
                                    password = value;
                                  },
                                  obscureText: true,
                                ),
                                decoration:
                                    ThemeHelper().inputBoxDecorationShaddow(),
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
                                  onPressed: () async {
                                    if (_formKey.currentState!.validate()) {
                                      signIn();
                                    }
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

  signIn() async {
    try {
      await auth
          .signInWithEmailAndPassword(
        email: email!,
        password: password!,
      )
          .then((value) {
        print(value);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => ServicePage()));
      }).catchError((error) => print(error));
    } catch (e) {
      print(e.toString());
    }
  }
}
