import 'package:flutter/material.dart';
import 'package:rigolaz_2/credentials/forgotpass.dart';
import 'package:rigolaz_2/credentials/zone_saisie.dart';
import 'package:rigolaz_2/services/auth.dart';
import 'entete.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final AuthService _auth = AuthService();
  
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
                Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Column(
                    children: <Widget>[
                      ZoneSaisie(
                        labelText: 'Identifiant',
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 15),
                      ZoneSaisie(
                        labelText: 'Mot de passe',
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: width,
                        child: RaisedButton(
                          padding: EdgeInsets.all(15),
                          color: Colors.blue,
                          child: Text(
                            'SE CONNECTER',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () async {
                            dynamic result = await _auth.signInAnon();
                            if (result == null) {
                              print('error signing in');
                            } else {
                              print('signed in');
                              print(result.uid);
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 5),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPass(),
                            ),
                          );
                        },
                        child: Text(
                          'Mot de passe oublié ?',
                          style: TextStyle(
                              fontFamily: 'Actor',
                              fontSize: 17,
                              color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Nouveau?',
                      style: TextStyle(
                          fontFamily: 'Actor',
                          fontSize: 18,
                          color: Colors.grey),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/se_connecter/s_inscrire');
                      },
                      child: Text(
                        "S'enregistrer",
                        style: TextStyle(
                            fontFamily: 'Actor',
                            fontSize: 18,
                            color: Colors.blue),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
