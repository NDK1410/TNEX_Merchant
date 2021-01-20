import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';

class FoodScreenChooseSubCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Sub-category"),
        centerTitle: true,
        backgroundColor: MyColors.brand_dark,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.grey[200],
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ListSubCategory("Noodles"),
                Divider(),
                ListSubCategory("Breads"),
                Divider(),
                ListSubCategory("Rice set"),
                Divider(),
                ListSubCategory("Buffet"),
              ],
            ),
          ),
        ],
      ),
    );
  }

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
}
