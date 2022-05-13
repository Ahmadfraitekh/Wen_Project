import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wyn/custom_app_bar.dart';
import 'package:wyn/forgot_password_page.dart';
import 'package:wyn/forgot_password_verification_page.dart';
import 'package:wyn/profile_page.dart';
import 'package:wyn/service_page.dart';
import 'package:wyn/signin.dart';
import 'package:wyn/theme_helper.dart';

class InfoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InfoPageState();
  }
}

class _InfoPageState extends State<InfoPage> {
  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
  double _headerHeight = 150;
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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(25, 50, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Car Number', 'Enter your car number'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Car Brand', 'Enter your car brand'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                "Mobile Number*", "Enter your mobile number"),
                            keyboardType: TextInputType.phone,
                            validator: (val) {
                              if (!(val!.isEmpty) &&
                                  !RegExp(r"^(\d+)*$").hasMatch(val)) {
                                return "Enter a valid phone number";
                              }
                              return null;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 10, 20),
                          decoration:
                              ThemeHelper().buttonBoxDecoration(context),
                          child: ElevatedButton(
                            style: ThemeHelper().buttonStyle(),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                              child: Text(
                                'Order Now'.toUpperCase(),
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
                                      builder: (context) => ServicePage()));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
