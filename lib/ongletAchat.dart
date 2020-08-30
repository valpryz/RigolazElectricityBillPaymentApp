import 'package:flutter/material.dart';
import 'credentials/zone_saisie.dart';

class OngletAchat extends StatefulWidget {
  @override
  _OngletAchatState createState() => _OngletAchatState();
}

class _OngletAchatState extends State<OngletAchat> {
  final GlobalKey<FormState> _paymentFormKey = GlobalKey<FormState>();
  TextEditingController compteur = TextEditingController();
  TextEditingController montant;

  void initState() {
    super.initState();
    montant = TextEditingController(text: "0");
  }

  void dispose() {
    montant.dispose();
    super.dispose();
  }

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
    return Form(
      key: _paymentFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 7,
            child: Padding(
              padding: EdgeInsets.only(top: 25),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
                    child: ZoneSaisie(
                      controller: compteur,
                      obscureText: false,
                      labelText: 'Numéro Compteur',
                      maxLength: 12,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.end,
                      // ignore: missing_return
                      validator: (val) {
                        if (val.length < 12) {
                          return "12 chiffres minimum SVP!!";
                        }
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
                    child: ZoneSaisie(
                      controller: montant,
                      obscureText: false,
                      maxLength: 6,
                      labelText: 'Montant',
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.end,
                      // ignore: missing_return
                      validator: (val) {
                        if (int.parse(val) < 999) {
                          return "1000 frs minimum";
                        }
                      },
                      onChanged: (val) {
                        setState(() {
                          montant.text = val;
                        });
                        montant.selection = TextSelection.collapsed(
                            offset: montant.text.length);
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
                          "${(int.tryParse(montant.text) ?? 0) / 50} KWH",
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
              'Moyens de Paiement',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: GridView.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 0,
              crossAxisCount: 3,
              children: <Widget>[
                GestureDetector(
                  child: Image.asset('images/mtn.png'),
                  onTap: () async {
                    if (_paymentFormKey.currentState.validate()) {
                      print(montant);
                      print(compteur);
                    }
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
          )
        ],
      ),
    );
  }
}
