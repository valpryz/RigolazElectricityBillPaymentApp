import 'package:flutter/material.dart';

import '../constants.dart';

class SuppressionMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Rigolaz Serv'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 20),
                  width: 150,
                  child: Image.asset(
                    'images/logo_rigolaz.png',
                    width: 100,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Bravo thom! Vous avez libéré le compteur n 014294725701 au profil d'un nouvel abonné RIGOLAZ avec succès. Il sera désormais le propriétaire de ce compteur. Merci pour votre collaboration.",
                  textAlign: TextAlign.center,
                  style: kAideTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/', (Route<dynamic> route) => false);
                  },
                  child: Text(
                    'OK',
                    style: TextStyle(color: Colors.white),
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
