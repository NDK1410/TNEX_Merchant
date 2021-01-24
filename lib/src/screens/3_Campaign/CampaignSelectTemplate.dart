import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';
import 'package:tnexmerchant/src/helpers/CustomClipPath.dart';

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
                fontSize: 16,
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
                fontSize: 14,
              ),
            ),
          ),
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
              height: 424,
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 40, bottom: 20),
                          child: Text(
                            "Select campaign type",
                            style: TextStyle(
                              fontSize: 32,
                              color: MyColors.brand_dark,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            _templateContainer(
                              imageurl:
                                  "assets/3-campaign/merchant-3-discountevent.png",
                              textContent: "Discount event",
                            ),
                            SizedBox(width: 23),
                            _templateContainer(
                              imageurl:
                                  "assets/3-campaign/merchant-3-discountcode.png",
                              textContent: "Discount code",
                            ),
                          ],
                        ),
                      ],
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

  Widget _templateContainer({imageurl, textContent}) {
    return Container(
      width: 144,
      height: 104,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[100],
            blurRadius: 6.0,
            spreadRadius: 1.0,
          )
        ],
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 8),
          Image(
            height: 64,
            width: 64,
            image: AssetImage(imageurl),
          ),
          SizedBox(height: 4),
          Text(textContent),
        ],
      ),
    );
  }
}
