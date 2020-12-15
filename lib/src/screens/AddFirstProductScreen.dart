import 'package:flutter/material.dart';

class AddFirstProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                "Add your first product",
                style: TextStyle(
                    color: Color.fromRGBO(34, 32, 147, 1),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                "And start make some profit now!",
                style: TextStyle(
                  color: Color.fromRGBO(34, 32, 147, 1),
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 350,
              child: Image.asset(
                'assets/products-1.png',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25),
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
                    "Add new product",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
