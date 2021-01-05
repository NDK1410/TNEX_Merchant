import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _showPass = false;
  bool _showConfirmPass = false;
  TextEditingController _passController = new TextEditingController();
  TextEditingController _passConfirmController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  bottomRight: const Radius.circular(100.0),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.only(
                  bottomRight: const Radius.circular(120.0),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/1-register/bg_transfer_full.png"),
                  fit: BoxFit.fill,
                ),
              ),
              width: double.infinity,
              height: 360,
            ),
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 510,
                      width: 320,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey[400], width: 1.0),
                          bottom:
                              BorderSide(color: Colors.grey[400], width: 1.0),
                          right:
                              BorderSide(color: Colors.grey[400], width: 1.0),
                          left: BorderSide(color: Colors.grey[400], width: 1.0),
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 20),
                            child: Text("Username",
                                style: TextStyle(fontSize: 15)),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 5, left: 20, right: 20),
                            child: TextField(
                              style: TextStyle(
                                fontSize: 18,
                                color: MyColors.textPrimary,
                              ),
                              decoration: new InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blueAccent, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey[400], width: 1.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 20),
                            child:
                                Text("Phone", style: TextStyle(fontSize: 15)),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 5, left: 20, right: 20),
                            child: TextField(
                              style: TextStyle(
                                fontSize: 18,
                                color: MyColors.textPrimary,
                              ),
                              decoration: new InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blueAccent, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey[400], width: 1.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 20),
                            child: Text("Password",
                                style: TextStyle(fontSize: 15)),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 5, left: 20, right: 20),
                            child: Stack(
                              alignment: AlignmentDirectional.centerEnd,
                              children: <Widget>[
                                TextField(
                                  controller: _passController,
                                  obscureText: !_showPass,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: MyColors.textPrimary,
                                  ),
                                  decoration: new InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.blueAccent, width: 1.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey[400], width: 1.0),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: onToggleShowPass,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Icon(
                                      Icons.remove_red_eye,
                                      color: _showPass
                                          ? MyColors.brand_dark
                                          : Colors.grey[400],
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 20),
                            child: Text("Confirm Password",
                                style: TextStyle(fontSize: 15)),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 5, left: 20, right: 20),
                            child: Stack(
                              alignment: AlignmentDirectional.centerEnd,
                              children: <Widget>[
                                TextField(
                                  controller: _passConfirmController,
                                  obscureText: !_showConfirmPass,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: MyColors.textPrimary,
                                  ),
                                  decoration: new InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.blueAccent, width: 1.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey[400], width: 1.0),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: onToggleShowConfirmPass,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Icon(
                                      Icons.remove_red_eye,
                                      color: _showConfirmPass
                                          ? MyColors.brand_dark
                                          : Colors.grey[400],
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 10),
                            child: SizedBox(
                              height: 50,
                              width: 300,
                              child: RaisedButton(
                                color: MyColors.brand,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                                onPressed: () {
                                  // Navigator.pushNamed(context, '/register');
                                },
                                child: Text(
                                  "Create an account",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: Text(
                          "I already have an account",
                          style: TextStyle(
                            color: MyColors.brand,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onToggleShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  void onToggleShowConfirmPass() {
    setState(() {
      _showConfirmPass = !_showConfirmPass;
    });
  }
}
