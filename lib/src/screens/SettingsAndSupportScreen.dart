import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SettingsAndSupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Settings and support",
            style: TextStyle(fontSize: 18),
          ),
        ),
        backgroundColor: MyColors.brand_dark,
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  FractionallySizedBox(
                    child: Container(
                      height: 60,
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Icon(
                              FontAwesome.bank,
                              color: MyColors.textPrimary,
                              size: 30,
                            ),
                          ),
                          Text(
                            'Banking',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: MyColors.textPrimary,
                            size: 35,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FractionallySizedBox(
                    child: Container(
                      height: 60,
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Icon(
                              Icons.store,
                              color: MyColors.textPrimary,
                              size: 35,
                            ),
                          ),
                          Text(
                            'Website',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: MyColors.textPrimary,
                            size: 35,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FractionallySizedBox(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey[200],
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Icon(
                              Icons.shopping_basket,
                              color: MyColors.textPrimary,
                              size: 35,
                            ),
                          ),
                          Text(
                            'Shop Information',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: MyColors.textPrimary,
                            size: 35,
                          ),
                        ],
                      ),
                    ),
                  ),
                  FractionallySizedBox(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey[200],
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Icon(
                              FontAwesome.clock_o,
                              color: MyColors.textPrimary,
                              size: 35,
                            ),
                          ),
                          Text(
                            'Open Status',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: MyColors.textPrimary,
                            size: 35,
                          ),
                        ],
                      ),
                    ),
                  ),
                  FractionallySizedBox(
                    child: Container(
                      height: 60,
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Icon(
                              Icons.notifications,
                              color: MyColors.textPrimary,
                              size: 35,
                            ),
                          ),
                          Text(
                            'Notification Setting',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: MyColors.textPrimary,
                            size: 35,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FractionallySizedBox(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey[200],
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Icon(
                              Icons.lock,
                              color: MyColors.textPrimary,
                              size: 35,
                            ),
                          ),
                          Text(
                            'Security',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: MyColors.textPrimary,
                            size: 35,
                          ),
                        ],
                      ),
                    ),
                  ),
                  FractionallySizedBox(
                    child: Container(
                      height: 60,
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Icon(
                              Entypo.log_out,
                              color: Colors.red,
                              size: 35,
                            ),
                          ),
                          Text(
                            'Log Out',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// decoration: BoxDecoration(

//                         border: Border(
//                           bottom: BorderSide(
//                             color: Colors.grey[400],
//                             width: 1.0,
//                           ),
//                         ),
//                       ),
