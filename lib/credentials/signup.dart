import 'package:flutter/material.dart';
import 'package:rigolaz_2/credentials/entete.dart';
import 'package:rigolaz_2/services/auth.dart';
import 'package:rigolaz_2/services/password_generator.dart';
import 'package:rigolaz_2/travaux/loading.dart';
import 'zone_saisie.dart';
import 'dart:async';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

enum Gender { male, female }

class _SignUpState extends State<SignUp> {
  final AuthService _auth = AuthService();
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
  bool loading = false;
  TextEditingController pseudo;
  TextEditingController numeroCompteur;
  TextEditingController numeroTelephone;
  TextEditingController adresseMail;
  String error = '';
  String _generatedPassword = generatePassword(true, true, true, true, 8);

  var finaldate;

  void callDatePicker() async {
    var order = await getDate();
    setState(() {
      finaldate = order;
    });
  }

  Future<DateTime> getDate() {
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1930),
      lastDate: DateTime(2040),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light(),
          child: child,
        );
      },
    );
  }

  Gender _gender = Gender.female;

  @override
  initState() {
    pseudo = TextEditingController();
    numeroCompteur = TextEditingController();
    numeroTelephone = TextEditingController();
    adresseMail = TextEditingController();
    super.initState();
  }

  String emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return "Format d'email invalide!!";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return loading
        ? Loading()
        : SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(5),
                  width: width,
                  height: height,
                  child: Form(
                    key: _registerFormKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Entete(),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: <Widget>[
                              Text(error),
                              ZoneSaisie(
                                  controller: pseudo,
                                  obscureText: false,
                                  labelText: 'Pseudo',
                                  textAlign: TextAlign.start,
                                  // ignore: missing_return
                                  validator: (val) {
                                    if (val.length < 3) {
                                      return "Entrez un pseudo valide!";
                                    }
                                  }
                                  // onChanged: (value) {
                                  //   setState(() {
                                  //     pseudo = value;
                                  //   });
                                  // },
                                  ),
                              SizedBox(height: 10),
                              ZoneSaisie(
                                  obscureText: false,
                                  labelText: 'Numéro Compteur',
                                  maxLength: 12,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.start,
                                  controller: numeroCompteur,
                                  // ignore: missing_return
                                  validator: (val) {
                                    if (val.length < 12) {
                                      return "12 chiffres minimum SVP!!";
                                    }
                                  }
                                  // onChanged: (value) {
                                  //   setState(() {
                                  //     numeroCompteur = value;
                                  //   });
                                  // },
                                  ),
                              SizedBox(height: 10),
                              ZoneSaisie(
                                  obscureText: false,
                                  labelText: 'Numéro de Téléphone',
                                  maxLength: 9,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.start,
                                  controller: numeroTelephone,
                                  // ignore: missing_return
                                  validator: (val) {
                                    if (val.length < 9) {
                                      return "9 chiffres minimum SVP!!";
                                    }
                                  }
                                  // onChanged: (value) {
                                  //   setState(() {
                                  //     numeroTelephone = value;
                                  //   });
                                  // },
                                  ),
                              SizedBox(height: 10),
                              ZoneSaisie(
                                obscureText: false,
                                labelText: 'Adresse Mail',
                                textAlign: TextAlign.start,
                                controller: adresseMail,
                                validator: emailValidator,
                                // onChanged: (value) {
                                //   setState(() {
                                //     adresseMail = value;
                                //   });
                                // },
                              ),
                              //SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  FlatButton.icon(
                                    onPressed: callDatePicker,
                                    icon: Icon(Icons.date_range),
                                    label: finaldate == null
                                        ? Text(
                                            "Sélectionner la date",
                                            style: TextStyle(
                                                fontFamily: 'Actor',
                                                fontSize: 18),
                                          )
                                        : Text(
                                            "${finaldate.toLocal()}"
                                                .split(' ')[0],
                                            style: TextStyle(
                                                fontFamily: 'Actor',
                                                fontSize: 18),
                                          ),
                                  ),
                                ],
                              ),
                              //SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    'Sexe:',
                                    style: TextStyle(
                                        fontFamily: 'Actor', fontSize: 20),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          'F',
                                          style: TextStyle(
                                              fontFamily: 'Actor',
                                              fontSize: 20),
                                        ),
                                        Radio(
                                          value: Gender.female,
                                          groupValue: _gender,
                                          onChanged: (Gender value) {
                                            setState(() {
                                              _gender = value;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          'M',
                                          style: TextStyle(
                                              fontFamily: 'Actor',
                                              fontSize: 20),
                                        ),
                                        Radio(
                                          value: Gender.male,
                                          groupValue: _gender,
                                          onChanged: (Gender value) {
                                            setState(() {
                                              _gender = value;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 50),
                          width: 100,
                          child: RaisedButton(
                            padding: EdgeInsets.all(15),
                            color: Colors.blue,
                            child: Text(
                              'OK',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () async {
                              if (_registerFormKey.currentState.validate()) {
                                print(pseudo);
                                print(numeroCompteur);
                                print(numeroTelephone);
                                print(adresseMail);
                                print(finaldate);
                                print(_gender);
                                print(_generatedPassword);
                                pseudo.clear();
                                numeroCompteur.clear();
                                numeroTelephone.clear();
                                // adresseMail.clear();
                                setState(() {
                                  loading = true;
                                });
                                dynamic result =
                                    await _auth.registerInWithEmailAndPassword(
                                        adresseMail.toString().trim(),
                                        _generatedPassword);
                                if (result == null) {
                                  setState(() {
                                    error =
                                        'Identifiant ou mot de passe erroné';
                                    loading = false;
                                  });
                                } else {
                                  Navigator.of(context).pop();
                                }
                              }
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
