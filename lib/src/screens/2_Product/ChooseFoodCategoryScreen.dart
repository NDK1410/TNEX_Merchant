import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';

class ChooseFoodCategoryScreen extends StatelessWidget {
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
                    _CategoryBox(
                      imageUrl: "assets/2-products/Food/breakfast.png",
                      textContent: "Breakfast",
                    ),
                    SizedBox(width: 20),
                    _CategoryBox(
                      imageUrl: "assets/2-products/Food/Juice.png",
                      textContent: "Juice",
                    ),
                    SizedBox(width: 20),
                    _CategoryBox(
                      imageUrl: "assets/2-products/Food/Cakes.png",
                      textContent: "Cakes",
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _CategoryBox(
                      imageUrl: "assets/2-products/Food/Lunch.png",
                      textContent: "Lunch\nMeal",
                    ),
                    SizedBox(width: 20),
                    _CategoryBox(
                      imageUrl: "assets/2-products/Food/Tasty.png",
                      textContent: "Tasty",
                    ),
                    SizedBox(width: 20),
                    _CategoryBox(
                      imageUrl: "assets/2-products/Food/Drinks.png",
                      textContent: "Drinks",
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

  Widget _CategoryBox({imageUrl, textContent}) {
    return Container(
      height: 120,
      width: 84,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Image(
              height: 60,
              width: 60,
              image: AssetImage(imageUrl),
            ),
            SizedBox(height: 10),
            Container(
              width: 60,
              child: Center(
                child: Text(textContent),
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
}
