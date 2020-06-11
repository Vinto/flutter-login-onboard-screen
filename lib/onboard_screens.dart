import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnboardScreens extends StatefulWidget {
  @override
  _OnboardScreensState createState() => _OnboardScreensState();
}

class _OnboardScreensState extends State<OnboardScreens> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        _buildScreen(
          bgColor: Color(0xFFFFFFFF),
          icon: Icon(
            FontAwesomeIcons.truck,
            size: 100.0,
            color: Color(0xFF81DEFD),
          ),
          text:
              'Hungry? Order food in just a few clicks and we will take care of you.',
          index: 1,
          title: 'Order Food',
          buildContext: context,
        ),
        _buildScreen(
          bgColor: Color(0xFFFFFFFF),
          icon: Icon(
            FontAwesomeIcons.utensils,
            size: 100.0,
            color: Color(0xFF81DEFD),
          ),
          text:
              'Welcome to our restaurant app! Login and check out our delicious food.',
          index: 2,
          title: 'Browse Food',
          buildContext: context,
        ),
        _buildScreen(
          bgColor: Color(0xFFFFFFFF),
          icon: Icon(
            FontAwesomeIcons.bell,
            size: 100.0,
            color: Color(0xFF81DEFD),
          ),
          text: 'Monitor your orders and get updates when something changes.',
          index: 3,
          title: 'Notifications',
          buildContext: context,
        ),
        _buildScreen(
          bgColor: Color(0xFFFFFFFF),
          icon: Icon(
            FontAwesomeIcons.database,
            size: 100.0,
            color: Color(0xFF81DEFD),
          ),
          text: 'We support all payment options, thanks to Stripe.',
          index: 4,
          title: 'Stripe Payments',
          buildContext: context,
        ),
      ],
    );
  }
}

Widget _buildScreen(
    {Color bgColor,
    Icon icon,
    String text,
    int index,
    String title,
    BuildContext buildContext}) {
  return Scaffold(
    body: Container(
      padding: EdgeInsets.all(30),
      color: bgColor,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: SafeArea(
              child: icon,
            ),
          ),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: title,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Alegreya-Black',
                    fontSize: 22.0,
                    color: Color(0xFF3E4C59),
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18.0,
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                _buildText(text),
                SizedBox(
                  height: 60,
                ),
                _buildPageIndicator(index),
              ],
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          FlatButton(
            color: Color(0xFFE3F8FF),
            child: Text(
              'GET STARTED',
              style: TextStyle(
                fontFamily: 'FiraSans',
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Color(0xFF0B69A3),
                letterSpacing: 2.0,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(buildContext, '/');
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[],
            ),
          )
        ],
      ),
    ),
  );
}

Widget _buildPageIndicator(index) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        width: 6,
        height: 6,
        decoration: BoxDecoration(
          color: index == 1 ? Colors.lightBlueAccent : Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Container(
        width: 6,
        height: 6,
        decoration: BoxDecoration(
          color: index == 2 ? Colors.lightBlueAccent : Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Container(
        width: 6,
        height: 6,
        decoration: BoxDecoration(
          color: index == 3 ? Colors.lightBlueAccent : Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Container(
        width: 6,
        height: 6,
        decoration: BoxDecoration(
          color: index == 4 ? Colors.lightBlueAccent : Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ],
  );
}

Widget _buildText(text) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontFamily: 'FiraSans',
      fontSize: 14.0,
      color: Color(0xFF3E4C59),
      letterSpacing: 1.0,
    ),
  );
}
