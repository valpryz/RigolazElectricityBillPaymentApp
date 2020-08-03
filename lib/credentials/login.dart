import 'package:flutter/material.dart';
import 'package:rigolaz_2/credentials/forgotpass.dart';
import 'package:rigolaz_2/credentials/zone_saisie.dart';
import 'package:rigolaz_2/services/auth.dart';
import 'package:rigolaz_2/travaux/loading.dart';
import 'entete.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthService _auth = AuthService();
  final _loginFormKey = GlobalKey<FormState>();
  bool loading = false;

  String identifiant = '';
  String motDePasse = '';
  String error = '';

  String emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Le format de votre email est invalide!';
    } else {
      return null;
    }
  }

  String pwdValidator(String value) {
    if (value.length < 8) {
      return 'Minimum 8 caractères SVP!';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return loading ? Loading() : SafeArea(
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
                  child: Form(
                    key: _loginFormKey,
                    child: Column(
                      children: <Widget>[
                        Text(
                          error,
                          style: TextStyle(color: Colors.red, fontSize: 14.0),
                        ),
                        SizedBox(height: 15),
                        ZoneSaisie(
                          obscureText: false,
                          labelText: 'Identifiant',
                          textAlign: TextAlign.start,
                          validator: emailValidator,
                          onChanged: (val) {
                            setState(() {
                              identifiant = val;
                            });
                          },
                        ),
                        SizedBox(height: 15),
                        ZoneSaisie(
                          obscureText: true,
                          labelText: 'Mot de passe',
                          textAlign: TextAlign.start,
                          validator: pwdValidator,
                          onChanged: (val) {
                            setState(() {
                              motDePasse = val;
                            });
                          },
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
                              // dynamic result = await _auth.signInAnon();
                              // if (result == null) {
                              //   print('error signing in');
                              // } else {
                              //   print('signed in');
                              //   print(result.uid);
                              // }

                              if (_loginFormKey.currentState.validate()) {
                                print(motDePasse);
                                print(identifiant);
                                setState(() {
                                  loading = true;
                                });
                                dynamic result =
                                    await _auth.signInWithEmailAndPassword(
                                        identifiant, motDePasse);
                                if (result == null) {
                                  setState(() {
                                    error =
                                        'Identifiant ou mot de passe erroné';
                                        loading = false;
                                  });
                                }else {
                                  Navigator.of(context).pop();
                                }
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
