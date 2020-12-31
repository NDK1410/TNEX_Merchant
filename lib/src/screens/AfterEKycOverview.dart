import 'package:flutter/material.dart';

class AfterEKycOverview extends StatelessWidget {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
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
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey[400], width: 1.0),
                bottom: BorderSide(color: Colors.grey[400], width: 1.0),
                right: BorderSide(color: Colors.grey[400], width: 1.0),
                left: BorderSide(color: Colors.grey[400], width: 1.0),
              ),
              color: Colors.white,
              borderRadius: new BorderRadius.circular(8.0),
            ),
            width: 350,
            height: 400,
          ),
        ),
      ],
    );
  }
}
