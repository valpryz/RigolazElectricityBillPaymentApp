import 'package:flutter/material.dart';
import '../constants.dart';

class SignUpMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            padding: EdgeInsets.all(5),
            width: width,
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: width / 4),
                      padding: EdgeInsets.only(top: 15),
                      child: Image.asset(
                        'images/logo_rigolaz.png',
                        height: 45,
                      ),
                    )
                  ],
                ),
                Center(
                  child: Text(
                    'Un message contenant vos identifiants a été envoyé à votre adresse mail.',
                    style: kAideTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  width: width / 3,
                  child: RaisedButton(
                    padding: EdgeInsets.all(15),
                    color: Colors.blue,
                    child: Text(
                      'OK',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          '/', (Route<dynamic> route) => false);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
