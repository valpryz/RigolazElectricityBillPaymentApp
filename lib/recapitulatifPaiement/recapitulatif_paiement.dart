import 'package:flutter/material.dart';
import 'package:rigolaz_2/recapitulatifPaiement/bloc_coordonnees.dart';
import 'package:rigolaz_2/recapitulatifPaiement/bloc_recapitulatif_achat.dart';

class RecapitulatifPaiement extends StatefulWidget {
  @override
  _RecapitulatifPaiementState createState() => _RecapitulatifPaiementState();
}

class _RecapitulatifPaiementState extends State<RecapitulatifPaiement> {
  @override
  Widget build(BuildContext context) {

    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: height,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  
                  child: BlocRecapitulatifAchat(),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.green[200],
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1.0,
                      color: Colors.black,
                    ),
                  ),
                  height: 30,
                  child: Text(
                    'Renseignez vos coordonnées',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: BlocCoordonnees(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
