import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFFFFFF),
              Color(0xFFFFFFFF),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 120.0,
                height: 120.0,
                child: Image(
                  //062 388 1513
                  image: AssetImage('assets/snapres_logo_small.png'),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Welcome to ',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Alegreya-Black',
                        fontSize: 22.0,
                        color: Color(0xFF3E4C59),
                        letterSpacing: 1.0,
                      ),
                    ),
                    TextSpan(
                      text: 'SnapRes',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Color(0xFF40C3F7),
                        fontFamily: 'Alegreya-Black',
                        letterSpacing: 1.0,
                        fontSize: 22.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Order food and make reservations with one click.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'FiraSans',
                    fontSize: 14.0,
                    color: Color(0xFF3E4C59),
                    letterSpacing: 1.0,
                  ),
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                color: Color(0xFF81DEFD),
                child: InkWell(
                  splashColor: Color(0xFFE8368F),
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: ListTile(
                    title: Text(
                      'Log In',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'FiraSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Color(0xFF035388),
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                color: Color(0xFFE3F8FF),
                child: InkWell(
                  splashColor: Color(0xFFE8368F),
                  onTap: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: ListTile(
                    title: Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'FiraSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Color(0xFF0B69A3),
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/screens');
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    fontFamily: "FiraSans-ExtraLight",
                    fontSize: 16.0,
                    color: Color(0xFF52606D),
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
