import 'package:flutter/material.dart';
import 'package:rigolaz_2/credentials/entete.dart';
import 'zone_saisie.dart';
import 'dart:async';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

enum Gender { male, female }

class _SignUpState extends State<SignUp> {
  String pseudo;
  String numeroCompteur;
  String numeroTelephone;
  String adresseMail;

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

  String emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Email format is invalid';
    } else {
      return null;
    }
  }

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
                  child: Container(
            padding: EdgeInsets.all(5),
            width: width,
            height: height,
            child: Form(
              key: _formkey,
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
                          obscureText: false,
                          labelText: 'Pseudo',
                          textAlign: TextAlign.start,
                          onChanged: (value) {
                            setState(() {
                              pseudo = value;
                            });
                          },
                        ),
                        SizedBox(height: 10),
                        ZoneSaisie(
                          obscureText: false,
                          labelText: 'Numéro Compteur',
                          maxLength: 12,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.start,
                          onChanged: (value) {
                            setState(() {
                              numeroCompteur = value;
                            });
                          },
                        ),
                        SizedBox(height: 10),
                        ZoneSaisie(
                          obscureText: false,
                          labelText: 'Numéro de Téléphone',
                          maxLength: 9,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.start,
                          onChanged: (value) {
                            setState(() {
                              numeroTelephone = value;
                            });
                          },
                        ),
                        SizedBox(height: 10),
                        ZoneSaisie(
                          obscureText: false,
                          labelText: 'Adresse Mail',
                          textAlign: TextAlign.start,
                          onChanged: (value) {
                            setState(() {
                              adresseMail = value;
                            });
                          },
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: <Widget>[
                            FlatButton.icon(
                              onPressed: callDatePicker,
                              icon: Icon(Icons.date_range),
                              label: finaldate == null
                                  ? Text(
                                      "Sélectionner la date",
                                      style: TextStyle(
                                          fontFamily: 'Actor', fontSize: 18),
                                    )
                                  : Text(
                                      "${finaldate.toLocal()}".split(' ')[0],
                                      style: TextStyle(
                                          fontFamily: 'Actor', fontSize: 18),
                                    ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              'Sexe:',
                              style: TextStyle(fontFamily: 'Actor', fontSize: 20),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'F',
                                    style: TextStyle(
                                        fontFamily: 'Actor', fontSize: 20),
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
                                        fontFamily: 'Actor', fontSize: 20),
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
                    margin: EdgeInsets.only(bottom: 35),
                    width: 150,
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
                        print(pseudo);
                        print(numeroCompteur);
                        print(numeroTelephone);
                        print(adresseMail);
                        print(finaldate);
                        print(_gender);
                        TextEditingController().clear();
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
