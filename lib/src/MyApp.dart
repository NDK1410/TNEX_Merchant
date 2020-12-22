import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/screens/LoadingScreen.dart';
import 'package:tnexmerchant/src/screens/RegisterScreen.dart';
import 'package:tnexmerchant/src/screens/IntroScreen.dart';
import 'package:tnexmerchant/src/helpers/SlideRightRouter.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TNEX Merchant App',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return SlideRightRoute(widget: IntroScreen());
            break;
          case '/register':
            return SlideRightRoute(widget: RegisterScreen());
            break;
        }
      },
      home: LoadingScreen(),
    );
  }
}
