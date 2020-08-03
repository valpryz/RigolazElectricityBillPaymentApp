import 'package:flutter/material.dart';

import '../constants.dart';

class ModificationMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Modifier mon compte'),
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
              Icon(
                Icons.check_circle_outline,
                color: Colors.grey[400],
                size: 60,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  """Compte modifié:

Bravo thom! Vous avez modifié votre compte avec succès. Vos nouvelles coordonnées ont été envoyées à vos différents contacts. Merci!!""",
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
