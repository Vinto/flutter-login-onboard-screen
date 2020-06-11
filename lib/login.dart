import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailField = new TextEditingController();
  final TextEditingController _passwordField = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'LOGIN',
                  style: TextStyle(
                    fontFamily: 'FiraSans',
                    fontWeight: FontWeight.w300,
                    fontSize: 30.0,
                    color: Color(0xFF035388),
                    letterSpacing: 0.5,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                _buildTextFields(),
                SizedBox(
                  height: 60.0,
                ),
                _buildButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFields() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: TextField(
              controller: _emailField,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey[350],
                    width: 2.0,
                  ),
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60.0,
          ),
          Container(
            child: TextField(
              controller: _passwordField,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey[350],
                    width: 2.0,
                  ),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              obscureText: true,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildButtons() {
    return Container(
      child: Column(
        children: <Widget>[
          FlatButton(
            color: Color(0xFFE3F8FF),
            child: Text(
              'LOGIN',
              style: TextStyle(
                fontFamily: 'FiraSans',
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Color(0xFF0B69A3),
                letterSpacing: 2.0,
              ),
            ),
            onPressed: () {},
          ),
          SizedBox(
            height: 80.0,
          ),
          FlatButton(
            child: Icon(
              Icons.close,
              color: Colors.grey[400],
              size: 40.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
