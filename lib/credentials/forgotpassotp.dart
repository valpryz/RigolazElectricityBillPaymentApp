import 'package:flutter/material.dart';
import 'package:rigolaz_2/credentials/signup_message.dart';
import '../constants.dart';
import 'entete.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class ForgotPassOTP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
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
              Entete(),
              Center(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Un code vous a été envoyé par mail. Veuillez le saisir SVP!!',
                        style: kAideTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      PinEntryTextField(
                        fields: 6,
                        onSubmit: (String pin) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Pin"),
                                  content: Text('Pin entered is $pin'),
                                );
                              }); //end showDialog()
                        }, // end onSubmit
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                width: width / 2,
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      padding: EdgeInsets.all(15),
                      color: Colors.blue,
                      child: Text(
                        'CONFIRMER',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpMessage(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 15),
                    RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 35),
                      color: Color(0xff01A39D),
                      child: Text(
                        'RENVOYER CODE',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpMessage(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
