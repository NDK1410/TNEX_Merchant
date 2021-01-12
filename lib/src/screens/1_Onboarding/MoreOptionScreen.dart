import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';

enum radioChecking { vn, en }

class MoreOptionScreen extends StatefulWidget {
  String vn = "Tiếng Việt";
  String en = "English";

  @override
  _MoreOptionScreenState createState() => _MoreOptionScreenState();
}

class _MoreOptionScreenState extends State<MoreOptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Language",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Center(
              child: Text(
                "Done",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
        leading: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "Back",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        backgroundColor: MyColors.brand_dark,
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  RadioListTile(
                    title: Text("Tiếng Việt"),
                  ),
                  RadioListTile(
                    title: Text("English"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
