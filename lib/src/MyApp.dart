import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/screens/LoadingScreen.dart';
import 'package:tnexmerchant/src/screens/RegisterScreen.dart';
import 'package:tnexmerchant/src/screens/IntroScreen.dart';
import 'package:tnexmerchant/src/helpers/SlideRightRouter.dart';
import 'package:tnexmerchant/src/screens/TakeIdCardPictureIntroScreen.dart';
import 'package:tnexmerchant/src/screens/LoginScreen.dart';
import 'package:tnexmerchant/src/screens/CampaignSelectTemplate.dart';
import 'package:tnexmerchant/src/screens/ForgotPasswordScreen.dart';
import 'package:tnexmerchant/src/screens/AfterEKycOverview.dart';

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
          case '/login':
            return SlideRightRoute(widget: LoginScreen());
            break;
          case '/takeidcard':
            return SlideRightRoute(widget: TakeIdCardPictureIntroScreen());
            break;
          case '/campaignSelectTemplate':
            return SlideRightRoute(widget: CampaignSelectTemplate());
            break;
          case '/forgotPassword':
            return SlideRightRoute(widget: ForgotPasswordScreen());
            break;
        }
      },
      home: AfterEKycOverview(),
    );
  }
}
