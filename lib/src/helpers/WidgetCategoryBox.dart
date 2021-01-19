import 'package:flutter/material.dart';

Widget CategoryBox({imageUrl, textContent}) {
  return Container(
    height: 120,
    width: 84,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10),
          Image(
            height: 60,
            width: 60,
            image: AssetImage(imageUrl),
          ),
          SizedBox(height: 8),
          Container(
            width: 61,
            child: Text(
              textContent,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: Colors.grey[300],
      ),
    ),
  );
}
