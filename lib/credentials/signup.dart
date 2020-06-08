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
                    ZoneSaisie(),
                    SizedBox(height: 10),
                    ZoneSaisie(),
                    SizedBox(height: 10),
                    ZoneSaisie(),
                    SizedBox(height: 10),
                    ZoneSaisie(),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        FlatButton.icon(
                          onPressed: callDatePicker,
                          icon: Icon(Icons.date_range),
                          label: finaldate == null
                              ? Text(
                                  "Selectionner la date",
                                  style: TextStyle(
                                      fontFamily: 'Actor', fontSize: 18),
                                )
                              : Text(
                                  "$finaldate",
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
                              Text('M',
                                  style: TextStyle(
                                      fontFamily: 'Actor', fontSize: 20),),
                              Radio(
                                value: Gender.male,
                                groupValue: _gender,
                                onChanged: (Gender value) {
                                  setState(() {
                                    _gender = value;
                                    print(value);
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
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
