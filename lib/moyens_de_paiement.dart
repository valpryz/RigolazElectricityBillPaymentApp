import 'package:flutter/material.dart';
import 'package:rigolaz_2/recapitulatifPaiement/recapitulatif_paiement.dart';

class MoyenDePaiement extends StatelessWidget {
  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: Text(
        "Méthode de Paiement non disponible.",
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'Actor', fontSize: 18),
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 0,
        crossAxisCount: 3,
        children: <Widget>[
          GestureDetector(
            child: Image.asset('images/mtn.png'),
            onTap: () {
              Navigator.push(
                context,
                 MaterialPageRoute(
                  builder: (context) => RecapitulatifPaiement(),
                ),
              );
            },
          ),
          GestureDetector(
            child: Image.asset('images/om.png'),
            onTap: () {
              showAlertDialog(context);
            },
          ),
          GestureDetector(
            child: Image.asset('images/nexttel.png'),
            onTap: () {
              showAlertDialog(context);
            },
          ),
          GestureDetector(
            child: Image.asset(
              'images/cb.png',
              alignment: Alignment.topCenter,
            ),
            onTap: () {
              showAlertDialog(context);
            },
          ),
        ],
      ),
    );
  }
}
