import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';
import 'package:tnexmerchant/src/helpers/ListSubCategoryWidget.dart';

class FashionScreenChooseSubCategory extends StatelessWidget {
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
            height: 550,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ListSubCategory("Button-down shirt"),
                  Divider(),
                  ListSubCategory("Bloomers"),
                  Divider(),
                  ListSubCategory("Jeans"),
                  Divider(),
                  ListSubCategory("Shorts"),
                  Divider(),
                  ListSubCategory("Anime Cotton Tshirt"),
                  Divider(),
                  ListSubCategory("Jacket"),
                  Divider(),
                  ListSubCategory("Sleepwear"),
                  Divider(),
                  ListSubCategory("Underwear"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
