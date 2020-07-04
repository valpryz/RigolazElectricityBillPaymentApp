import 'package:flutter/material.dart';
import 'package:rigolaz_2/credentials/zone_saisie.dart';

class BlocComptabilite extends StatefulWidget {
  @override
  _BlocComptabiliteState createState() => _BlocComptabiliteState();
}

class _BlocComptabiliteState extends State<BlocComptabilite> {

  String numeroCompteur = '';
  int montant = 0;
  

  @override
  Widget build(BuildContext context) {

    double quantite = montant * 0.18;

    return Expanded(
      flex: 7,
      child: Padding(
        padding: EdgeInsets.only(top: 25),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
              child: ZoneSaisie(
                obscureText: false,
                maxLength: 12,
                labelText: 'Numéro de Compteur',
                keyboardType: TextInputType.number,
                textAlign: TextAlign.end,
                onChanged: (value) {
                  setState(() {
                    numeroCompteur = value;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
              child: ZoneSaisie(
                obscureText: false,
                maxLength: 6,
                labelText: 'Montant',
                keyboardType: TextInputType.number,
                textAlign: TextAlign.end,
                onChanged: (value) {
                  setState(() {
                    montant = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    'Quantité:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: 'Actor'),
                  ),
                  Text(
                    '$montant KWH',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: 'Actor',
                        color: Colors.green[500]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
