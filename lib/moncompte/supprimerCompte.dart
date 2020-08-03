import 'package:flutter/material.dart';
import 'package:rigolaz_2/credentials/zone_saisie.dart';
import 'package:rigolaz_2/moncompte/suppressionMessage.dart';

import '../constants.dart';
import 'modificationMessage.dart';

class SupprimerCompte extends StatefulWidget {
  @override
  _SupprimerCompteState createState() => _SupprimerCompteState();
}

class _SupprimerCompteState extends State<SupprimerCompte> {
  String motDePasse = '';

  String pwdValidator(String value) {
    if (value.length < 8) {
      return 'Minimum 8 caractères SVP!';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Supprimer mon compte'),
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
                """ATTENTION:
              La suppression du compte vous déliera du compteur. Ce dernier sera donc libre au profil d'un autre utilisateur.""",
                textAlign: TextAlign.center,
                style: kAideTextStyle,
              ),
            ),
            Container(
              child: Column(
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
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: ZoneSaisie(
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'ANNULER',
                    style: TextStyle(color: Colors.grey[500], fontSize: 17),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ModificationMessage(),
                      ),
                    );
                  },
                  child: Text(
                    'SUPPRIMER',
                    style: TextStyle(color: Colors.red, fontSize: 17),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
