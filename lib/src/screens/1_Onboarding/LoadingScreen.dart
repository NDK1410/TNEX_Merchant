import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';
import 'package:tnexmerchant/src/screens/1_Onboarding/IntroScreen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return FutureBuilder(
      future: _access(),
      builder: (context, snapshot) {
        return Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/1-register/Loading.png",
                  fit: BoxFit.cover,
                  width: 120,
                ),
                SizedBox(height: 20),
                Text(
                  "TNEX Merchant",
                  style: TextStyle(
                    fontSize: 24,
                    color: MyColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<String> _access() async {
    await Future.delayed(Duration(seconds: 4)).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return IntroScreen();
          },
        ),
      );
    });

    return "Welcome to TNEX";
  }
}
