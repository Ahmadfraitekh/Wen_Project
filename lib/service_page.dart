import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wyn/battery_page.dart';
import 'package:wyn/forgot_password_page.dart';
import 'package:wyn/forgot_password_verification_page.dart';
import 'package:wyn/images.dart';
import 'package:wyn/petrol_page.dart';
import 'package:wyn/profile_page.dart';
import 'package:wyn/puncture_page.dart';
import 'package:wyn/shop_page.dart';
import 'package:wyn/splash_screen.dart';
import 'signin.dart';

class ServicePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ServicePageState();
  }
}

class _ServicePageState extends State<ServicePage> {
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
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              title: Text(
                'Petrol Services',
                style: TextStyle(
                  fontSize: 24,
                  color: HexColor('#6613d7'),
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Image.asset(
                petroll,
                // width: 150,
                // height: 150,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoPage()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              title: Text(
                'Puncture Services',
                style: TextStyle(
                  fontSize: 24,
                  color: HexColor('#6613d7'),
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Image.asset(
                puncture,
                // width: 150,
                // height: 150,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoPuncPage()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              title: Text(
                'Winch Services',
                style: TextStyle(
                  fontSize: 24,
                  color: HexColor('#6613d7'),
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Image.asset(
                winch,
                // width: 150,
                // height: 150,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoPuncPage()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              title: Text(
                'Change & Recharge batter Services',
                style: TextStyle(
                  fontSize: 24,
                  color: HexColor('#6613d7'),
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Image.asset(
                battery,
                // width: 150,
                // height: 150,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoBatPage()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              title: Text(
                'Repairing Shops & Services',
                style: TextStyle(
                  fontSize: 24,
                  color: HexColor('#6613d7'),
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Image.asset(
                repair,
                // width: 150,
                // height: 150,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShopsPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
