import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';
import 'package:fdottedline/fdottedline.dart';

class TakeIdCardPictureIntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        automaticallyImplyLeading: true,
        title: Container(
          /// padding width = leading width to center title
          padding: EdgeInsets.only(right: 50),
          child: Center(
            child: Text(
              "Create Bank Account",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        leading: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
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
        ),
        backgroundColor: MyColors.brand_dark,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Take ID card picture",
                style: TextStyle(
                  fontSize: 28,
                  color: MyColors.brand_dark,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "In order to create bank account, please",
                    style: TextStyle(
                      fontSize: 20,
                      color: MyColors.textPrimary,
                    ),
                  ),
                  Text(
                    "take photos of both sides of ID card",
                    style: TextStyle(
                      fontSize: 20,
                      color: MyColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: FDottedLine(
                strokeWidth: 0.8,
                dottedLength: 6.0,
                space: 4.0,
                corner: FDottedLineCorner.all(6.0),

                /// add widget
                child: Container(
                  color: MyColors.blueGreyFill,
                  width: 200,
                  height: 120,
                  alignment: Alignment.center,
                  child: Row(
                    /// begin
                    children: <Widget>[
                      /// Left
                      Padding(
                        padding: EdgeInsets.only(top: 40, left: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white,
                          ),
                          width: 50,
                          height: 70,

                          /// Human Inside
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 15),
                              Container(
                                height: 22,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: MyColors.blueGreyFill,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                height: 15,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: MyColors.blueGreyFill,
                                  borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(10.0),
                                    topRight: const Radius.circular(10.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      /// Right
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                              ),
                              width: 100,
                              height: 12,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                              ),
                              width: 100,
                              height: 7,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                              ),
                              width: 100,
                              height: 7,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                              ),
                              width: 100,
                              height: 7,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                              ),
                              width: 100,
                              height: 7,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Front page ID card",
                style: TextStyle(
                  fontSize: 20,
                  color: MyColors.textPrimary,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: FDottedLine(
                strokeWidth: 0.8,
                dottedLength: 6.0,
                space: 4.0,
                corner: FDottedLineCorner.all(6.0),

                /// add widget
                child: Container(
                  color: MyColors.blueGreyFill,
                  width: 200,
                  height: 120,

                  /// Break
                  child: Row(
                    children: <Widget>[
                      /// Left
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 25, left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                              ),
                              width: 70,
                              height: 40,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5, left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                              ),
                              width: 70,
                              height: 40,
                            ),
                          ),
                        ],
                      ),

                      /// Right
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 30, left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                              ),
                              width: 100,
                              height: 7,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                              ),
                              width: 100,
                              height: 7,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                              ),
                              width: 100,
                              height: 7,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                              ),
                              width: 100,
                              height: 7,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Back page ID card",
                style: TextStyle(
                  fontSize: 20,
                  color: MyColors.textPrimary,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 50,
                width: 340,
                child: RaisedButton(
                  color: MyColors.brand,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
