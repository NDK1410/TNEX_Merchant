import 'package:flutter/material.dart';
import 'package:tnexmerchant/src/helpers/MyColors.dart';

class CHangePasswordScreen extends StatefulWidget {
  @override
  _CHangePasswordScreenState createState() => _CHangePasswordScreenState();
}

class _CHangePasswordScreenState extends State<CHangePasswordScreen> {
  bool _showCurrentPass = false;
  bool _showNewPass = false;
  bool _showConfirmPass = false;
  TextEditingController _currentPassController = new TextEditingController();
  TextEditingController _newPassController = new TextEditingController();
  TextEditingController _confirmPassController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Change Password",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: MyColors.brand_dark,
        leadingWidth: 65,
        leading: Container(
          padding: EdgeInsets.only(left: 10),
          child: Center(
            child: Text(
              "Cancel",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          Center(
            child: Text(
              "Next",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.grey[200],
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0,
              ),
            ]),
            width: double.infinity,
            height: 350,
            child: Column(
              children: <Widget>[
                FormWithTextField(
                  text: "Current Password",
                  fieldController: _currentPassController,
                  obscure: _showCurrentPass,
                  onToggle: onToggleShowCurrentPass,
                ),
                FormWithTextField(
                  text: "New password",
                  fieldController: _newPassController,
                  obscure: _showNewPass,
                  onToggle: onToggleShowNewPass,
                ),
                FormWithTextField(
                  text: "Confirm new password",
                  fieldController: _confirmPassController,
                  obscure: _showConfirmPass,
                  onToggle: onToggleConfirmPass,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onToggleShowCurrentPass() {
    setState(() {
      _showCurrentPass = !_showCurrentPass;
    });
  }

  void onToggleShowNewPass() {
    setState(() {
      _showNewPass = !_showNewPass;
    });
  }

  void onToggleConfirmPass() {
    setState(() {
      _showConfirmPass = !_showConfirmPass;
    });
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
}
