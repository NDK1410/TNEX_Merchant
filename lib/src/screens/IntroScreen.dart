import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyString.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Container(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.end,
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: <Widget>[
  //           Padding(
  //             padding: EdgeInsets.only(left: 60),
  //             child: Text(
  //               "Welcome to",
  //               style: TextStyle(
  //                   color: Color.fromRGBO(34, 32, 147, 1),
  //                   fontSize: 30,
  //                   fontWeight: FontWeight.bold),
  //             ),
  //           ),
  //           Padding(
  //             padding: EdgeInsets.only(left: 60),
  //             child: Text(
  //               "TNEX Merchant",
  //               style: TextStyle(
  //                   color: Color.fromRGBO(34, 32, 147, 1),
  //                   fontSize: 30,
  //                   fontWeight: FontWeight.bold),
  //             ),
  //           ),
  //           Container(
  //             width: double.infinity,
  //             height: 300,
  //             child: Image.asset(
  //               'assets/introslide_1.png',
  //               fit: BoxFit.fill,
  //             ),
  //           ),
  //           Row(
  //             children: <Widget>[
  //               Text(
  //                 "Let's",
  //                 style: TextStyle(
  //                   fontSize: 20,
  //                   color: Colors.grey[600],
  //                 ),
  //               ),
  //               Text(
  //                 "double your revenue in 3-6 months",
  //                 style: TextStyle(
  //                     fontSize: 20,
  //                     color: Colors.grey[800],
  //                     fontWeight: FontWeight.bold),
  //               ),
  //             ],
  //           ),
  //           Padding(
  //             padding: EdgeInsets.only(top: 10),
  //             child: Text(
  //               "Just a few steps and it’s done",
  //               style: TextStyle(fontSize: 20, color: Colors.grey[600]),
  //             ),
  //           ),
  //           Padding(
  //             padding: EdgeInsets.only(left: 40, top: 25),
  //             child: SizedBox(
  //               height: 50,
  //               width: 340,
  //               child: RaisedButton(
  //                 color: Color.fromRGBO(34, 32, 147, 1),
  //                 shape: RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.all(
  //                     Radius.circular(4),
  //                   ),
  //                 ),
  //                 onPressed: () {},
  //                 child: Text(
  //                   "I want to create an account",
  //                   style: TextStyle(
  //                     color: Colors.white,
  //                     fontSize: 20,
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ),
  //           Padding(
  //             padding: EdgeInsets.only(top: 20, left: 40, bottom: 30),
  //             child: Text(
  //               "I already have an account",
  //               style: TextStyle(
  //                 color: Color.fromRGBO(34, 32, 147, 1),
  //                 fontSize: 20,
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          PageView(
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: <Widget>[
              makePage(
                image: 'assets/introslide_1.png',
                title: MyString.step1,
                content: MyString.step4,
              ),
              makePage(
                // reverse: true,
                image: 'assets/step-one.png',
                title: MyString.step2,
                content: MyString.step4,
              ),
              makePage(
                image: 'assets/step-two.png',
                title: MyString.step3,
                content: MyString.step4,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 145),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildIndicator(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 70),
            child: SizedBox(
              height: 50,
              width: 340,
              child: RaisedButton(
                color: Color.fromRGBO(34, 32, 147, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "I want to create an account",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Text(
              "I already have an account",
              style: TextStyle(
                color: Color.fromRGBO(34, 32, 147, 1),
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget makePage({image, title, content, reverse = false}) {
    return Container(
      padding: EdgeInsets.only(bottom: 125),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          !reverse
              ? Column(
                  children: <Widget>[
                    Text(
                      "Welcome to",
                      style: TextStyle(
                        color: MyColors.secondary,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "TNEX Merchant",
                      style: TextStyle(
                        color: MyColors.secondary,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: double.infinity,
                        height: 300,
                        child: Image.asset(
                          image,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                )
              : SizedBox(),
          Text(
            title,
            style: TextStyle(
                color: Colors.grey[600],
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            content,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey[600],
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
          reverse
              ? Column(
                  children: <Widget>[
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset(image),
                    ),
                  ],
                )
              : SizedBox(),
        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 30 : 6,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(5)),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }
}
