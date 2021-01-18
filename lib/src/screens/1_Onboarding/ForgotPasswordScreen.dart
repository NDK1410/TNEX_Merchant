import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  bottomRight: const Radius.circular(100.0),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.only(
                  bottomRight: const Radius.circular(120.0),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/1-register/bg_transfer_full.png"),
                  fit: BoxFit.fill,
                ),
              ),
              width: double.infinity,
              height: 360,
            ),
            Padding(
              padding: EdgeInsets.only(top: 80, left: 30),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey[400], width: 1.0),
                          bottom:
                              BorderSide(color: Colors.grey[400], width: 1.0),
                          right:
                              BorderSide(color: Colors.grey[400], width: 1.0),
                          left: BorderSide(color: Colors.grey[400], width: 1.0),
                        ),
                        color: Colors.white,
                        borderRadius: new BorderRadius.circular(8.0),
                      ),
                      width: 350,
                      height: 320,
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "FORGOT PASSWORD",
                                    style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    "Let us know your phone number linked to this account",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: MyColors.textPrimary,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    "Phone Number",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                              child: Stack(
                                alignment: AlignmentDirectional.centerEnd,
                                children: <Widget>[
                                  TextField(
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: MyColors.textPrimary,
                                    ),
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6.0)),
                                        borderSide:
                                            BorderSide(color: Colors.blue),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6.0)),
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: SizedBox(
                                height: 50,
                                width: 310,
                                child: RaisedButton(
                                  color: MyColors.brand,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(4),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Send OTP",
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
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: Text(
                          "Back to login",
                          style: TextStyle(
                            color: MyColors.brand,
                            fontSize: 18,
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
