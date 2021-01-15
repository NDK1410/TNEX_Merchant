import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';

// class ResetPasswordScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class ResetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
              padding: EdgeInsets.only(top: 80, left: 30),
              child: Column(
                children: <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey[400], width: 1.0),
                        bottom: BorderSide(color: Colors.grey[400], width: 1.0),
                        right: BorderSide(color: Colors.grey[400], width: 1.0),
                        left: BorderSide(color: Colors.grey[400], width: 1.0),
                      ),
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    width: 350,
                    height: 400,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "RESET PASSWORD",
                                style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        FormWithTextField(
                          text: "New Password",
                          fieldController: _passController,
                          obscure: _showPass,
                          onToggle: onToggleShowPass,
                        ),
                        FormWithTextField(
                          text: "Confirm New Password",
                          fieldController: _passConfirmController,
                          obscure: _showConfirmPass,
                          onToggle: onToggleShowConfirmPass,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: SizedBox(
                            height: 50,
                            width: 310,
                            child: RaisedButton(
                              color: MyColors.brand,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Reset Password",
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget FormWithTextField({text, fieldController, obscure, onToggle}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20),
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 5),
          Stack(
            alignment: AlignmentDirectional.centerEnd,
            children: <Widget>[
              TextField(
                controller: fieldController,
                obscureText: !obscure,
                style: TextStyle(
                  fontSize: 18,
                  color: MyColors.textPrimary,
                ),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              GestureDetector(
                onTap: onToggle,
                child: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.remove_red_eye,
                    color: obscure ? MyColors.brand_dark : Colors.grey[400],
                    size: 24.0,
                  ),
                ),
              ),
            ],
          ),
        ],
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
