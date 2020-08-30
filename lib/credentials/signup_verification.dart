import 'package:flutter/material.dart';
import 'package:rigolaz_2/credentials/signup_message.dart';
import '../constants.dart';
import 'entete.dart';

class SignUpVerification extends StatelessWidget {
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
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          text: 'Identifiant : ',
                          style: kAideTextStyle,
                          children: <TextSpan>[
                            TextSpan(
                              text: 'thom5701',
                              style: TextStyle(color: Color(0xff625FEA)),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Numéro de compteur : ',
                          style: kAideTextStyle,
                          children: <TextSpan>[
                            TextSpan(
                              text: '014294725701',
                              style: TextStyle(color: Color(0xff625FEA)),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Numéro de téléphone : ',
                          style: kAideTextStyle,
                          children: <TextSpan>[
                            TextSpan(
                              text: '(237) 6930337537',
                              style: TextStyle(color: Color(0xff625FEA)),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Adresse Mail : ',
                          style: kAideTextStyle,
                          children: <TextSpan>[
                            TextSpan(
                              text: 'n_thomy@yahoo.fr',
                              style: TextStyle(color: Color(0xff625FEA)),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Programme tarifaire : ',
                          style: kAideTextStyle,
                          children: <TextSpan>[
                            TextSpan(
                              text: 'FAMILY',
                              style: TextStyle(color: Color(0xff625FEA)),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Puissance Max : ',
                          style: kAideTextStyle,
                          children: <TextSpan>[
                            TextSpan(
                              text: '4.4KWh',
                              style: TextStyle(color: Color(0xff625FEA)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                width: width / 2,
                child: RaisedButton(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
