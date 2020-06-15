import 'package:flutter/material.dart';
import 'package:rigolaz_2/credentials/zone_saisie.dart';

class BlocComptabilite extends StatefulWidget {
  @override
  _BlocComptabiliteState createState() => _BlocComptabiliteState();
}

class _BlocComptabiliteState extends State<BlocComptabilite> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Padding(
        padding: EdgeInsets.only(top: 25),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
              child: ZoneSaisie(
                labelText: 'Numéro de Compteur',
                keyboardType: TextInputType.number,
                textAlign: TextAlign.end,
                onChanged: (value) {},
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
              child: ZoneSaisie(
                labelText: 'Montant',
                keyboardType: TextInputType.number,
                textAlign: TextAlign.end,
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 20,
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
                    '200 KWH',
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
