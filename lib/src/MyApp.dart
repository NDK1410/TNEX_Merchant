import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/screens/LoadingScreen.dart';
import 'package:tnexmerchant/src/screens/CampainSelectTemplate.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TNEX Merchant App',
      home: CampaignSelectTemplate(),
    );
  }
}
