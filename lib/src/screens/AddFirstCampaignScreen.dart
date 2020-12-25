import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';

class AddFirstCampaignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                "Add your first campaign",
                style: TextStyle(
                    color: MyColors.brand_dark,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 50),
              child: Text(
                "Make your products more attractive",
                style: TextStyle(
                  color: MyColors.brand_dark,
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Image.asset(
                'assets/3-campaign/merchant-3-campaign.png',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: SizedBox(
                height: 50,
                width: 340,
                child: RaisedButton(
                  color: MyColors.brand_dark,
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
