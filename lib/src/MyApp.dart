import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/screens/1_Onboarding/LoadingScreen.dart';
import 'package:tnexmerchant/src/screens/1_Onboarding/RegisterScreen.dart';
import 'package:tnexmerchant/src/screens/1_Onboarding/IntroScreen.dart';
import 'package:tnexmerchant/src/helpers/SlideRightRouter.dart';
import 'package:tnexmerchant/src/screens/1_Onboarding/TakeIdCardPictureIntroScreen.dart';
import 'package:tnexmerchant/src/screens/1_Onboarding/LoginScreen.dart';
import 'package:tnexmerchant/src/screens/3_Campaign/CampaignSelectTemplate.dart';
import 'package:tnexmerchant/src/screens/1_Onboarding/ForgotPasswordScreen.dart';
import 'package:tnexmerchant/src/screens/1_Onboarding/IdCardDocumentTypeScreen.dart';
import 'package:tnexmerchant/src/screens/1_Onboarding/MoreOptionScreen.dart';
import 'package:tnexmerchant/src/screens/4_Merchant_Website/SettingsAndSupportScreen.dart';

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
          case '/idcardtype':
            return SlideRightRoute(widget: IdCardDocumentTypeScreen());
            break;
        }
      },
      home: MoreOptionScreen(),
    );
  }
}
