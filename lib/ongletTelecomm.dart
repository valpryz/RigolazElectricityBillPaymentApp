import 'package:flutter/material.dart';

class OngletTelecomm extends StatelessWidget {
  final text =
      """Pour bénéficier de cette option, vous devez vous abonner au segment PREMIUM
Le segment premium vous donne la possibilité d\’interagir (en push) avec votre compteur en passant par l\’appli. Vous pourriez donc : 
-Voir les courbes de charge 
-Le solde en compteur 
-Recharger votre compteur à distance 
-Avoir des alertes du compteur (Manque de crédit, manque de courant, manque de phase, etc…)""";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Icon(
              Icons.stars,
              size: 45,
            ),
            SizedBox(height: 20),
            Text(
              text,
              textAlign: TextAlign.justify,
              style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            ),
          ],
        ),
      ),
    );
  }
}
