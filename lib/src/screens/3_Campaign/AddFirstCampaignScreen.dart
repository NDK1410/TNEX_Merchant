import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';
import 'package:tnexmerchant/src/helpers/CustomClipPath.dart';

class AddFirstCampaignScreen extends StatelessWidget {
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
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              height: 520,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Text(
                      "Add your first campaign",
                      style: TextStyle(
                          color: MyColors.brand_dark,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 50),
                    child: Text(
                      "Make your products more attractive",
                      style: TextStyle(
                        color: MyColors.brand_dark,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    width: 268,
                    height: 240,
                    child: Image.asset(
                      'assets/3-campaign/merchant-3-campaign.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 400),
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/campaignSelectTemplate');
                  },
                  child: Text(
                    "Add new campaign",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
