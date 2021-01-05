import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';
import 'package:fdottedline/fdottedline.dart';

class IdCardDocumentTypeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Center(
        //   child: Padding(
        //     padding: EdgeInsets.only(right: 50),
        //     child: Text(
        //       "Add Campaign",
        //       style: TextStyle(fontSize: 18),
        //     ),
        //   ),
        // ),
        // leading: Container(
        //   padding: EdgeInsets.only(top: 15, left: 15),
        //   child: GestureDetector(
        //     onTap: () {
        //       Navigator.of(context).pop(null);
        //     },
        //     child: Text(
        //       "Back",
        //       style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 18,
        //           fontWeight: FontWeight.bold),
        //     ),
        //   ),
        // ),
        backgroundColor: MyColors.brand_dark,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop(null);
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
            Text(
              "Document Type",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            /// "Back" text with same color to invisible, to let appbar spacebetween ///
            Text(
              "Back",
              style: TextStyle(
                color: MyColors.brand_dark,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            /// "Back" text with same color to invisible, to let appbar spacebetween ///
          ],
        ),
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
            height: 545,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey[200],
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/1-register/camera.png",
                          fit: BoxFit.cover,
                          width: 150,
                        ),
                        Text(
                          "Please choose the document type to take photo",
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey[200],
                        width: 1.0,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'ID Card',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Series with 9 digits',
                            style: TextStyle(
                              fontSize: 18,
                              color: MyColors.textPrimary,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: MyColors.textPrimary,
                        size: 40,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey[200],
                        width: 1.0,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Plastic-based ID card',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Series with 12 digits',
                            style: TextStyle(
                              fontSize: 18,
                              color: MyColors.textPrimary,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: MyColors.textPrimary,
                        size: 40,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 80,
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Citizen card',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Series with 12 digits',
                            style: TextStyle(
                              fontSize: 18,
                              color: MyColors.textPrimary,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: MyColors.textPrimary,
                        size: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
