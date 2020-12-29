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
      // backgroundColor: MyColors.brand_dark,
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              color: MyColors.brand_dark,
            ),
            Center(
              child: Container(
                height: 500,
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
                      child: Text("Username", style: TextStyle(fontSize: 15)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: TextField(
                        decoration: new InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blueAccent, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[400], width: 1.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: Text("Phone", style: TextStyle(fontSize: 15)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: TextField(
                        decoration: new InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blueAccent, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[400], width: 1.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: Text("Password", style: TextStyle(fontSize: 15)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: TextField(
                        decoration: new InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blueAccent, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[400], width: 1.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: Text("Confirm Password",
                          style: TextStyle(fontSize: 15)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 20, right: 20),
                      child: TextField(
                        decoration: new InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blueAccent, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[400], width: 1.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 10),
                      child: SizedBox(
                        height: 50,
                        width: 300,
                        child: RaisedButton(
                          color: MyColors.secondary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                          onPressed: () {
                            // Navigator.pushNamed(context, '/register');
                          },
                          child: Text(
                            "Create an account",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
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
