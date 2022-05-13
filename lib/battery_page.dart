import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wyn/custom_app_bar.dart';
import 'package:wyn/theme_helper.dart';

class InfoBatPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InfoBatPageState();
  }
}

class _InfoBatPageState extends State<InfoBatPage> {
  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
  double _headerHeight = 150;

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
