import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';
import 'package:fdottedline/fdottedline.dart';

class CampaignSelectTemplate extends StatelessWidget {
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
              "Add Campaign",
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
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 40, bottom: 20),
              child: Text(
                "Use campaign template",
                style: TextStyle(
                  fontSize: 27,
                  color: MyColors.brand_dark,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.grey[400],
                    ),
                  ),
                  child: _upperRow(
                    imageurl: "assets/3-campaign/merchant-3-flashsale.png",
                    upperText: "Flash",
                    lowerText: "Sale",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    width: 100,
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.grey[400],
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Image(
                          height: 90,
                          image: AssetImage(
                              "assets/3-campaign/merchant-3-promocode.png"),
                        ),
                        Text("Special"),
                        Text("Code"),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.grey[400],
                    ),
                  ),
                  child: _upperRow(
                    imageurl: "assets/3-campaign/merchant-3-iconlove.png",
                    upperText: "Event",
                    lowerText: "Day",
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 30),
              child: Text(
                "Or create a campaign from scratch",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _lowerRow(
                  imageurl: "assets/3-campaign/merchant-3-discountevent.png",
                  upperText: "Discount",
                  lowerText: "Event",
                ),
                SizedBox(width: 30),
                _lowerRow(
                  imageurl: "assets/3-campaign/merchant-3-discountcode.png",
                  upperText: "Discount",
                  lowerText: "Code",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _upperRow({imageurl, upperText, lowerText}) {
    return Column(
      children: <Widget>[
        Image(
          image: AssetImage(imageurl),
        ),
        Text(upperText),
        Text(lowerText),
      ],
    );
  }

  Widget _lowerRow({imageurl, upperText, lowerText}) {
    return FDottedLine(
      color: Colors.grey[400],
      strokeWidth: 2.0,
      dottedLength: 10.0,
      space: 2.0,
      corner: FDottedLineCorner.all(8),
      child: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 110,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageurl),
              ),
            ),
          ),
          Text(upperText),
          Text(lowerText),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
