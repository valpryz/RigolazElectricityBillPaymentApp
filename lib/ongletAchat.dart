import 'package:flutter/material.dart';
import 'package:rigolaz_2/moyens_de_paiement.dart';
import 'package:rigolaz_2/recapitulatifPaiement/bloc_comptabilite.dart';


class OngletAchat extends StatefulWidget {

  
  @override
  _OngletAchatState createState() => _OngletAchatState();
}

class _OngletAchatState extends State<OngletAchat> {
  @override
  Widget build(BuildContext context) {

    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        BlocComptabilite(),
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
            'Moyens de Paiement',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        MoyenDePaiement()
      ],
    );
  }
}




