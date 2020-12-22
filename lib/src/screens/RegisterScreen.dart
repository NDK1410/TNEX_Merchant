import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: MyColors.secondary,
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              color: MyColors.secondary,
            ),
            Center(
              child: Container(
                height: 400,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: Text("Username"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: TextFormField(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Text("Phone"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: TextFormField(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Text("Password"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: TextFormField(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Text("Confirm Password"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: TextFormField(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
