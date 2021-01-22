import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/CustomClipPath.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';

class OpenBankFailedAdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.grey[100],
            height: double.infinity,
            width: double.infinity,
          ),
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              padding: EdgeInsets.only(top: 20),
              height: 480,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 80),
                          child: Text(
                            "Open bank account failed!",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 54, 104, 1),
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 214,
                          width: 217,
                          child: Image.asset(
                            'assets/1-register/OpenBankAccountFailed.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "Your info you’ve submitted cannot be verify.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: MyColors.textPrimary,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Please request again",
                            style: TextStyle(
                              color: MyColors.textPrimary,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 480),
            child: Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 25),
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
                        onPressed: () {},
                        child: Text(
                          "Request bank account again",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "Back to Overview",
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
