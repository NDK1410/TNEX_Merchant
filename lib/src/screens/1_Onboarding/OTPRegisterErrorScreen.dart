import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';
import 'package:tnexmerchant/src/helpers/CustomClipPath.dart';

class OTPRegisterErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.grey[100],
            ),
            ClipPath(
              child: Container(
                padding: const EdgeInsets.fromLTRB(40, 150, 40, 140),
                width: MediaQuery.of(context).size.width,
                height: 420,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Cannot confirm with OTP",
                      style: TextStyle(
                        color: MyColors.deepRed,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      "The phone number 0969310911 cannot receive OTP because it has received 5 OTP today.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: MyColors.textPrimary,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Please try again after 01:59:58s",
                      style: TextStyle(
                        color: MyColors.textPrimary,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              clipper: CustomClipPath(),
            ),
            Container(
              padding: EdgeInsets.only(top: 420),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: SizedBox(
                        height: 40,
                        width: 280,
                        child: RaisedButton(
                          color: MyColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: Text(
                            "Back to register",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.pushNamed(context, "/login");
                        },
                        child: Text(
                          "Back to previous page",
                          style: TextStyle(
                            color: MyColors.primary,
                            fontSize: 14,
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
