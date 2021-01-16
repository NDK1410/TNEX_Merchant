import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';
import 'package:fdottedline/fdottedline.dart';

class IdCardDocumentTypeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        automaticallyImplyLeading: true,
        backgroundColor: MyColors.brand_dark,
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
        title: Container(
          /// padding width = leading width to center title
          padding: EdgeInsets.only(right: 50),
          child: Center(
            child: Text(
              "Document Type",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
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
                CardContainer(
                  title: 'ID Card',
                  text: 'Series with 9 digits',
                  icon: Icons.keyboard_arrow_right,
                  colo: MyColors.textPrimary,
                ),
                CardContainer(
                  title: 'Plastic-based ID card',
                  text: 'Series with 12 digits',
                  icon: Icons.keyboard_arrow_right,
                  colo: MyColors.textPrimary,
                ),
                CardContainer(
                  title: 'Citizen card',
                  text: 'Series with 12 digits',
                  icon: Icons.keyboard_arrow_right,
                  colo: MyColors.textPrimary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget CardContainer({title, text, icon, colo}) {
    return Container(
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
                title,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 5),
              Text(
                text,
                style: TextStyle(
                  fontSize: 18,
                  color: colo,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            icon,
            color: colo,
            size: 40,
          ),
        ],
      ),
    );
  }
}
