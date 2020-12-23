import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';

class RichDecisionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        /// Warning: Make Column Center at my Emulator ///
        padding: EdgeInsets.symmetric(horizontal: 30),

        /// Warning: Make Column Center at my Emulator ///
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50, bottom: 20),
              child: Text(
                "Want to be super rich ?",
                style: TextStyle(
                    color: MyColors.brand_dark,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 300,
              width: 300,
              child: Image.asset(
                'assets/3-campaign/merchant-3-rich.png',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "We have many tools to make you rich.",
                style: TextStyle(
                  color: MyColors.brand_dark,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                "But first, please take ID Card photo.",
                style: TextStyle(
                  color: MyColors.brand_dark,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: SizedBox(
                height: 50,
                width: 340,
                child: RaisedButton(
                  color: MyColors.brand_dark,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Yes, I want to be a billionaire",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30, top: 15),
              child: Text(
                "I will consider it later",
                style: TextStyle(
                  color: MyColors.brand_dark,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
