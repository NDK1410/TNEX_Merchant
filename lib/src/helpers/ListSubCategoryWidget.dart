import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';

Widget ListSubCategory(text) {
  return Container(
    height: 60,
    color: Colors.white,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black87,
            ),
          ),
          Spacer(),
          Icon(
            Icons.keyboard_arrow_right,
            color: MyColors.textPrimary,
            size: 35,
          ),
        ],
      ),
    ),
  );
}
