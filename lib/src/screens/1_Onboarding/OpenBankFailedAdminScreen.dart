import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';

class OpenBankFailedAdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 80, left: 30),
              child: Text(
                "Open bank account failed!",
                style: TextStyle(
                    color: Color.fromRGBO(0, 54, 104, 1),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 350,
              child: Image.asset(
                'assets/1-register/OpenBankAccountFailed.png',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Your info you’ve submitted cannot be verify.",
                style: TextStyle(
                  color: MyColors.textPrimary,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20),
              child: Text(
                "Please request again",
                style: TextStyle(
                  color: MyColors.textPrimary,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25, left: 20),
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
                  onPressed: () {},
                  child: Text(
                    "Request bank account again",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, left: 20),
              child: Text(
                "Back to Overview",
                style: TextStyle(
                  color: MyColors.primary,
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
