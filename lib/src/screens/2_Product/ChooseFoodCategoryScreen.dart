import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';
import 'package:tnexmerchant/src/helpers/TemplateCategoryBox.dart';
import 'package:tnexmerchant/src/helpers/CustomClipPath.dart';

class ChooseFoodCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Choose Category",
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: MyColors.brand_dark,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.grey[100],
          ),
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              height: 550,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: Center(
                      child: Text(
                        "What will you sell?",
                        style: TextStyle(
                          color: MyColors.brand_dark,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          TemplateCategoryBox(
                            imageurl: "assets/2-products/Food/Foods.png",
                            textContent: "Foods",
                          ),
                          SizedBox(height: 24),
                          TemplateCategoryBox(
                            imageurl: "assets/2-products/Food/Snack.png",
                            textContent: "Snack",
                          ),
                          SizedBox(height: 24),
                          TemplateCategoryBox(
                            imageurl: "assets/2-products/Food/Buffet.png",
                            textContent: "Buffet",
                          ),
                        ],
                      ),
                      SizedBox(width: 23),
                      Column(
                        children: <Widget>[
                          TemplateCategoryBox(
                            imageurl: "assets/2-products/Food/Drinks.png",
                            textContent: "Drinks",
                          ),
                          SizedBox(height: 24),
                          TemplateCategoryBox(
                            imageurl: "assets/2-products/Food/Dessert.png",
                            textContent: "Dessert",
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
