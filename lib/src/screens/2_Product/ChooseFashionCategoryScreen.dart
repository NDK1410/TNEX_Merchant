import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';
import 'package:tnexmerchant/src/helpers/WidgetCategoryBox.dart';

class ChooseFashionCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Choose Category"),
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
            decoration: BoxDecoration(
              color: Colors.white,
              // borderRadius: new BorderRadius.only(
              //   bottomRight: const Radius.circular(80.0),
              //   bottomLeft: const Radius.circular(80.0),
              // ),
            ),
            height: 400,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: Center(
                    child: Text(
                      "What will you sell?",
                      style: TextStyle(
                        color: MyColors.brand_dark,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CategoryBox(
                      imageUrl: "assets/2-products/Fashion/gile.png",
                      textContent: "Women\nshirt",
                    ),
                    SizedBox(width: 20),
                    CategoryBox(
                      imageUrl: "assets/2-products/Fashion/shirt.png",
                      textContent: "Men\nShirt",
                    ),
                    SizedBox(width: 20),
                    CategoryBox(
                      imageUrl: "assets/2-products/Fashion/hat.png",
                      textContent: "Bags",
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CategoryBox(
                      imageUrl: "assets/2-products/Fashion/bag.png",
                      textContent: "Travel\nheadwear",
                    ),
                    SizedBox(width: 20),
                    CategoryBox(
                      imageUrl: "assets/2-products/Fashion/polo.png",
                      textContent: "Unisex\nTshirt",
                    ),
                    SizedBox(width: 20),
                    CategoryBox(
                      imageUrl: "assets/2-products/Fashion/trouses.png",
                      textContent: "Trouses",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
