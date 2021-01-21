import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';
import 'package:tnexmerchant/src/helpers/CustomClipPath.dart';

class RichDecisionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.grey[100],
          ),
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              padding: EdgeInsets.only(top: 50),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              height: 500,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text(
                      "Let's become\na Super Merchant",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: MyColors.brand_dark,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    height: 240,
                    width: 180,
                    child: Image.asset(
                      'assets/1-register/merchant-3-rich.png',
                    ),
                  ),
                  Container(
                    child: Text(
                      "To become a Super Merchant with more\noffers, TNEX need you to provide your ID Card\nand face recognition",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: MyColors.textPrimary,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 450),
            child: Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 70),
                    child: SizedBox(
                      height: 50,
                      width: 340,
                      child: RaisedButton(
                        color: MyColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/idcardtype');
                        },
                        child: Text(
                          "Capture ID Card",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30, top: 15),
                    child: Text(
                      "I will provide later",
                      style: TextStyle(
                        color: MyColors.primary,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
