import 'package:flutter/material.dart';

Widget TemplateCategoryBox({imageurl, textContent}) {
  return Container(
    width: 144,
    height: 104,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey[100],
          blurRadius: 6.0,
          spreadRadius: 1.0,
        )
      ],
    ),
    child: Column(
      children: <Widget>[
        SizedBox(height: 8),
        Image(
          height: 64,
          width: 64,
          image: AssetImage(imageurl),
        ),
        SizedBox(height: 4),
        Text(textContent),
      ],
    ),
  );
}
