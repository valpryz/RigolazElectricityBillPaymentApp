import 'package:flutter/material.dart';
import 'package:rigolaz_2/credentials/zone_saisie.dart';

class BlocCoordonnees extends StatefulWidget {
  @override
  _BlocCoordonneesState createState() => _BlocCoordonneesState();
}

class _BlocCoordonneesState extends State<BlocCoordonnees> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('images/mtn.png'),
            ZoneSaisie(),
            ZoneSaisie(),
            Text(
              "Composez le *126# et renseignez votre code MTN Mobile Money",
              style: TextStyle(fontSize: 17, fontFamily: 'Actor'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'ANNULER',
                    style: TextStyle(color: Colors.red, fontSize: 17),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'VALIDER',
                    style: TextStyle(color: Colors.green, fontSize: 17),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
