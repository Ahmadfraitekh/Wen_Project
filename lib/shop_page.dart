import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wyn/forgot_password_page.dart';
import 'package:wyn/forgot_password_verification_page.dart';
import 'package:wyn/profile_page.dart';
import 'package:wyn/service_page.dart';
import 'package:wyn/signin.dart';

class ShopsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShopsPageState();
  }
}

class _ShopsPageState extends State<ShopsPage> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#6613d7'),
        title: Text(
          'Service Page',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
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
    );
  }
}
