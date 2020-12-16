import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/screens/LoadingScreen.dart';
import 'package:tnexmerchant/src/screens/RichDecisionScreen.dart';
import 'package:tnexmerchant/src/screens/AddFirstProductScreen.dart';
import 'package:tnexmerchant/src/screens/AddFirstCampaignScreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TNEX Merchant App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RichDecisionScreen(),
    );
  }
}
