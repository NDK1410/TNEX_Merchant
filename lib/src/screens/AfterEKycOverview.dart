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
      ],
    );
  }
}
