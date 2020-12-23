import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';

class CreateFreeBankAccountScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 80, bottom: 20),
              child: Text(
                "Create free bank account",
                style: TextStyle(
                    color: Color.fromRGBO(0, 54, 104, 1),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 250,
              child: Image.asset(
                'assets/1-register/CreateFreeBankAccount.png',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.check,
                    color: MyColors.success,
                    size: 18,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Transactions with zero fees",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.check,
                    color: MyColors.success,
                    size: 18,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Online payment from TNEX consumers",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.check,
                    color: MyColors.success,
                    size: 18,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Get higher merchant rank",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: SizedBox(
                height: 50,
                width: 340,
                child: RaisedButton(
                  color: MyColors.brand,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Create my bank account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Request TNEX Merchant for account opening",
                style: TextStyle(
                  color: MyColors.brand,
                  fontSize: 19,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
