import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wyn/forgot_password_page.dart';
import 'package:wyn/forgot_password_verification_page.dart';
import 'package:wyn/header_widget.dart';
import 'package:wyn/registration_page.dart';
import 'package:wyn/service_page.dart';
import 'package:wyn/signin.dart';
import 'package:wyn/splash_screen.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#6613d7'),
        title: Text(
          'Profile Page',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(
              top: 16,
              right: 16,
            ),
            child: Stack(
              children: <Widget>[
                Icon(Icons.notifications),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: Text(
                      '5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "User Name",
                    style: TextStyle(
                        fontSize: 25,
                        color: HexColor('#6613d7'),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home_repair_service_rounded,
                  size: _drawerIconSize,
                  color: HexColor('#6613d7'),
                ),
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 17, color: HexColor('#6613d7')),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ServicePage()));
                },
              ),
              Divider(
                color: HexColor('#6613d7'),
                height: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.login_rounded,
                  size: _drawerIconSize,
                  color: HexColor('#6613d7'),
                ),
                title: Text(
                  'Login Page',
                  style: TextStyle(
                      fontSize: _drawerFontSize, color: HexColor('#6613d7')),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
              Divider(
                color: HexColor('#6613d7'),
                height: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.car_repair_rounded,
                  size: _drawerIconSize,
                  color: HexColor('#6613d7'),
                ),
                title: Text(
                  'My Service',
                  style: TextStyle(
                      fontSize: _drawerFontSize, color: HexColor('#6613d7')),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordPage()),
                  );
                },
              ),
              Divider(
                color: HexColor('#6613d7'),
                height: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  size: _drawerIconSize,
                  color: HexColor('#6613d7'),
                ),
                title: Text(
                  'My Profile',
                  style: TextStyle(
                      fontSize: _drawerFontSize, color: HexColor('#6613d7')),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
              ),
              Divider(
                color: HexColor('#6613d7'),
                height: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                  size: _drawerIconSize,
                  color: HexColor('#6613d7'),
                ),
                title: Text(
                  'Notifications',
                  style: TextStyle(
                      fontSize: _drawerFontSize, color: HexColor('#6613d7')),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordVerificationPage()),
                  );
                },
              ),
              Divider(
                color: HexColor('#6613d7'),
                height: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.logout_rounded,
                  size: _drawerIconSize,
                  color: HexColor('#6613d7'),
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                      fontSize: _drawerFontSize, color: HexColor('#6613d7')),
                ),
                onTap: () {
                  SystemNavigator.pop();
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Mr. ',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'llll',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding:
                              const EdgeInsets.only(left: 8.0, bottom: 4.0),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "User Information",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Card(
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    ...ListTile.divideTiles(
                                      color: Colors.grey,
                                      tiles: [
                                        ListTile(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 4),
                                          leading: Icon(Icons.my_location),
                                          title: Text("Location"),
                                          subtitle: Text(
                                            "USA",
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.email),
                                          title: Text("Email"),
                                          subtitle: Text(
                                            "donaldtrump@gmail.com",
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.phone),
                                          title: Text("Phone"),
                                          subtitle: Text(
                                            "99--99876-56",
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.person),
                                          title: Text("About Me"),
                                          subtitle: Text(
                                            "This is a about me link and you can khow about me in this section.",
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
