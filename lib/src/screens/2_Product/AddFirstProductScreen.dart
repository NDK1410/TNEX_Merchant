import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';
import 'package:tnexmerchant/src/helpers/CustomClipPath.dart';

class AddFirstProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding: EdgeInsets.only(top: 50),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              height: 500,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text(
                      "Add your first product",
                      style: TextStyle(
                          color: MyColors.brand_dark,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 20),
                    child: Text(
                      "And start make some profit now!",
                      style: TextStyle(
                        color: MyColors.brand_dark,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    width: 280,
                    height: 240,
                    child: Image.asset(
                      'assets/2-products/products-1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 500),
                    child: SizedBox(
                      height: 40,
                      width: 280,
                      child: RaisedButton(
                        color: MyColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Add new product",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
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
