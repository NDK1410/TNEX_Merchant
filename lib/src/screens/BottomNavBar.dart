import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static List<Widget> _widgetOptions = <Widget>[
    // Screen Here
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Entypo.pie_chart),
            label: 'Overview',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.shopping_cart),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.tags),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.bank),
            label: 'Bank',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: MyColors.brand_dark,
        onTap: _onItemTapped,
      ),
    );
  }
}
