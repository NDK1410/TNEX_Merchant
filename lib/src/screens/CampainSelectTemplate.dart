import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';

class CampaignSelectTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Add Campaign",
            style: TextStyle(fontSize: 18),
          ),
        ),
        backgroundColor: MyColors.secondary,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Use campaign template",
                style: TextStyle(
                  fontSize: 27,
                  color: MyColors.secondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              width: 80,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: <Widget>[
                  Card(
                    color: Colors.black87,
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 20, bottom: 30),
            //   child: Container(
            //     width: 60,
            //     height: 120,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //     child: Column(
            //       children: <Widget>[
            //         Card(
            //           child: Column(
            //             children: <Widget>[
            //               const ListTile(
            //                 leading: ImageIcon(
            //                   AssetImage(
            //                       'assets/3-campaign/merchant-3-flashsale.png'),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Card(
            //           child: Column(
            //             children: <Widget>[
            //               const ListTile(
            //                 leading: ImageIcon(
            //                   AssetImage(
            //                       'assets/3-campaign/merchant-3-promocode.png'),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Card(
            //           child: Column(
            //             children: <Widget>[
            //               const ListTile(
            //                 leading: ImageIcon(
            //                   AssetImage(
            //                       'assets/3-campaign/merchant-3-iconlove.png'),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
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
            // Padding(
            //   padding: EdgeInsets.only(top: 20, bottom: 30),
            //   child: Container(
            //     width: 60,
            //     height: 120,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //     child: Row(
            //       children: <Widget>[
            //         Card(
            //           child: Column(
            //             children: <Widget>[
            //               const ListTile(
            //                 leading: ImageIcon(
            //                   AssetImage(
            //                       'assets/3-campaign/merchant-3-discountevent.png'),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Card(
            //           child: Column(
            //             children: <Widget>[
            //               const ListTile(
            //                 leading: ImageIcon(
            //                   AssetImage(
            //                       'assets/3-campaign/merchant-3-discountcode.png'),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
